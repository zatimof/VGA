// Top-level module
module vga(	reset,
				gen,
				rgb,
				hs,
				vs,
				led,
				rom_addr,
				rom_data,
				rom_rc,
				ram_addr,
				ram_data,
				ram_we,
				host_data,
				host_busy,
				host_ad,
				host_cs
				);
				
				
parameter 	line1_addr = 4'd12,
				line2_addr = 4'd13;						//adress of lines
				
// Define inputs and outputs			
input		gen,reset,host_cs,host_ad;
input		[7:0]		rom_data;							//ext ROM data 8bit
input		[7:0]		host_data;							//ext host data 8bit

output 	hs,vs,led,rom_rc,ram_we,host_busy;
output	[5:0]		rgb;									//5-3 - rgb high, 2-0 - rgb low
output	[10:0]	rom_addr;							//ext ROM addr 11 bit (2KB)
output	[13:0]	ram_addr;							//ext RAM addr 14 bit (16KB)

inout		[7:0]		ram_data;							//ext RAM data 8bit

// Define flip-flops and registers
reg		hs,vs,led,rom_rc,host_busy,temp_reg3;	//host_busy: 1-busy
reg		[5:0]		rgb;									//pixel color register
reg 		[10:0]	hreg;									//horizontal counter register
reg		[9:0]		vreg;									//vertical counter register
reg		[7:0]		rom_reg,temp_reg1;				//ROM data storage register
reg		[4:0]		cntrl_reg;							//control register
reg		[7:0]		sym_color;							//Symbol color storage
reg		[2:0]		sym_attr,temp_reg2;				//Symbol attribute storage
reg		[10:0]	rom_addr;							//ROM address storage register
reg		[13:0]	ram_addr_int;						//RAM address storage register
reg		[13:0]	ram_addr_ext;						//RAM ext address storage register
reg		[4:0]		blink_dev;							//blink devider register

// Define wires
wire		[7:0]		ram_input;							//RAM input data wire

// Define assignes
assign 	ram_data[7:0] = ((~host_busy) && (~host_ad) && (~ram_we)) ? host_data[7:0] : 8'bz,
			ram_input[7:0] = host_busy ? ram_data[7:0] : 8'b0;
assign	ram_we = ((~host_busy) && (~host_ad)) ? host_cs : 1'b1;
assign	ram_addr[13:0] = host_busy ? ram_addr_int[13:0] : ram_addr_ext[13:0];

always @(negedge gen)
begin 
//Generate syncs and blanking
		
	if(hreg[10:0]==11'd1600)							//limiting horizontal counter
	begin
		hreg[10:0] <= 11'd0;
		if(vreg[9:0]==10'd525)							//limiting vertical counter
		begin
			vreg[9:0] <= 10'd0;
			led <= ~led;									//led blinking with freq 30Hz
			blink_dev[4:0] <= blink_dev[4:0] + 5'd1;	//blink divider increment
		end
		else		
			vreg[9:0] <= vreg[9:0] + 10'd1;			//increment vertical counter
	end
	else
		hreg[10:0] <= hreg[10:0] + 11'd1;			//increment horizontal counter with freq 50MHz
	
	if((hreg[10:0]==11'd1344) && reset)				//hsync beginning  (2 symbol shift)
		hs <= 1'd0;
	
	if(hreg[10:0]==11'd1536)							//hsync ending (2 symbol shift)
		hs <= 1'd1;
			
	if((vreg[9:0]==10'd490) && reset)				//vsync beginning
		vs <= 1'd0;
		
	if(vreg[9:0]==10'd492)								//vsync ending
		vs <= 1'd1;
	
	if((vreg[9:0]<10'd480) && reset)					//host_busy signal generate
		host_busy <= 1'b1;
	else
		host_busy <= 1'b0;
	
	if((hreg[10:0]>11'd31) && (hreg[10:0]<11'd1312) && host_busy && reset)	//paint
	begin
		if(rom_reg[~hreg[3:1]]==1'b1)					//symbol/background select
		begin													//symbol color painting
			if(sym_color[3:0] == 4'd6)					//brown color correction
				rgb[5:0] <= 6'b010100;
			else
			begin
				rgb[2:0] <= sym_color[2:0];			//other colors painting
				if(sym_color[3])
					rgb[5:3] <= 3'b111;
				else
					rgb[5:3] <= 3'b000;
			end
		end	
		else
		begin													//background color painting
			if(sym_color[7:4] == 4'd6)					//brown color correction
				rgb[5:0] <= 6'b010100;
			else
			begin
				rgb[2:0] <= sym_color[6:4];			//other colors painting
				if(sym_color[7])
					rgb[5:3] <= 3'b111;
				else
					rgb[5:3] <= 3'b000;
			end
		end
	end	
	else
		rgb[5:0] = 6'd0;									//blanking
			
//Read ROM and RAM
	
	if(hreg[3:0] == 4'd0)								//Set sym ASCII RAM address 
		ram_addr_int[13:0] <= {2'b00,vreg[8:4],hreg[10:4]};

	if(hreg[3:0]==4'd4)							
	begin
		rom_addr[10:0] <= {ram_input[6:0],vreg[3:0]};	//Read sym0 (7 bit) ascii RAM code to row ROM address
		temp_reg3 <= ram_input[7];						//Read sym (bit 8) ASCII RAM code to temp_reg3 register
		temp_reg1[7:0] <= rom_data[7:0];				//Read sym bitmap ROM code to temp_reg1 register
		sym_attr[2:0] <= temp_reg2[2:0];				//Move sym attribute ROM code from temp_reg2 to sym_attr register
	end
	
	if(hreg[3:0]==4'd5)
		ram_addr_int[13:0] <= {2'b01,vreg[8:4],hreg[10:4]};	//Set sym attribute RAM address 

	if(hreg[3:0]==4'd7)
		rom_rc <= 1'd0;									//Set ROM RC down
		
	if(hreg[3:0]==4'd10)
	begin
		rom_addr[10:0] <= {5'd0,ram_input[7:3],temp_reg3};		//Set sym column ROM address 
		temp_reg2[2:0] <= ram_input[2:0];			//Read sym attribute RAM code to temp_reg2 register
		ram_addr_int[13:0] <= {2'b10,vreg[8:4],hreg[10:4]}-1;	//Set sym color RAM address 
	end
		
	if(hreg[3:0]==4'd13)
		rom_rc <= 1'd1;									//Set ROM RC up

	if((hreg[3:0]==4'd15) && host_busy)
	begin
		sym_color[7:0] <= ram_input[7:0];			//Read sym color RAM code to sym_color register
		if(sym_attr[2] && ((vreg[3:0] == (4'd11 + cntrl_reg[4:3]))||(vreg[3:0] == (4'd12 + cntrl_reg[4:3]))))
			rom_reg[7:0] <= 8'd255;						//underline painting
		else
			rom_reg[7:0] <= temp_reg1[7:0];			//Move sym bitmap ROM code from temp_reg1 to rom_reg register
		if(sym_attr[0] && blink_dev[4])				//Accept sym_attr register parameters
			if(sym_attr[1])								//symbol blinking
				sym_color[3:0] <= 4'd0;
			else
				sym_color[3:0] <= ram_input[7:4];
		else
			sym_color[3:0] <= ram_input[3:0];
		if(sym_attr[1] && blink_dev[4])				//background blinking
			sym_color[7:4] <= 4'd0;
		else
			sym_color[7:4] <= ram_input[7:4];	
	end
end

always @(posedge host_cs)
begin 
	if(host_ad)												//select adress/command
	begin
		if(host_data[7])									//save command
			if(host_data[6:5] == 2'b11)
				cntrl_reg[4:0] <= host_data[4:0];
			else
				ram_addr_ext[13:7] <= host_data[6:0];
		else
			ram_addr_ext[6:0] <= host_data[6:0];
	end
	else
	begin
		if(ram_addr_ext[6:0] == 7'd79)				//column address correction
			if(ram_addr_ext[11:7] == 7'd29)			
				if(ram_addr_ext[13:12] == 2'b10)
					ram_addr_ext[13:0] <= 14'd0;		//reset memory address	
				else
					ram_addr_ext[13:0] <= ram_addr_ext[13:0] + 14'd305;	//page address correction
			else
				ram_addr_ext[13:0] <= ram_addr_ext[13:0] + 14'd49;	//row address correction
		else
			ram_addr_ext[13:0] <= ram_addr_ext[13:0] + 14'd1;	//increment RAM address
	end
end
endmodule
