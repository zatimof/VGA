// Top-level module
module vga2ws(host_reset,
				gen,
				rgb,
				hs,
				vs,
				rom_addr,
				rom_data,
				rom_oe,
				rom_we,
				ram_addr,
				ram_data,
				ram_we,
				host_data,
				host_busy,
				host_ad,
				host_cs
				);
				
// Define inputs and outputs			
input		gen, host_reset, host_cs, host_ad;
input		[7:0]		host_data;							//ext host data 8bit

output 	hs, vs, rom_oe, rom_we, ram_we, host_busy;
output	[5:0]		rgb;									//5-3 - rgb high, 2-0 - rgb low
output	[16:0]	rom_addr;							//ext ROM addr 17 bit (128KB)
output	[13:0]	ram_addr;							//ext RAM addr 14 bit (16KB)

inout		[7:0]		rom_data, ram_data;				//ext ROM data 8bit, ext RAM data 8bit

// Define flip-flops and registers
reg		hs, vs, host_busy;							//host_busy: 1-busy
reg		[5:0]		rgb;									//pixel color register
reg 		[11:0]	hreg;									//horizontal counter register
reg		[9:0]		vreg;									//vertical counter register
reg		[7:0]		rom_reg,temp_reg1;				//ROM data storage register
reg		[4:0]		cntrl_reg;							//control register
reg		[7:0]		sym_color;							//Symbol color storage
reg		[2:0]		sym_attr;							//Symbol attribute storage
reg		[16:0]	rom_addr_int,rom_addr_ext;		//ROM address storage register
reg		[13:0]	ram_addr_int,ram_addr_ext;		//RAM address storage register
reg		[4:0]		blink_dev;							//blink devider register

// Define wires
wire		[7:0]		rom_input, ram_input;			//RAM input data wire
wire		clk, gen_inv1, gen_inv2, gen_inv3, gen_inv4 /* synthesis keep */;

// Define assignes
assign 	ram_data[7:0] = ((~host_busy) && (~host_ad) && (~ram_we) && (~cntrl_reg[2])) ? host_data[7:0] : 8'bz;
assign 	rom_data[7:0] = ((~host_busy) && (~host_ad) && (~rom_we) && (cntrl_reg[2])) ? host_data[7:0] : 8'bz;
assign	ram_input[7:0] = host_busy ? ram_data[7:0] : 8'b0;
assign	rom_input[7:0] = host_busy ? rom_data[7:0] : 8'b0;			
assign	ram_we = ((~host_busy) && (~host_ad) && (~cntrl_reg[2])) ? host_cs : 1'b1;
assign	rom_we = ((~host_busy) && (~host_ad) && (cntrl_reg[2])) ? host_cs : 1'b1;
assign	rom_oe = ~rom_we;
assign	ram_addr[13:0] = host_busy ? ram_addr_int[13:0] : ram_addr_ext[13:0];
assign	rom_addr[16:0] = cntrl_reg[2] ? rom_addr_ext[16:0] : rom_addr_int[16:0];

assign	gen_inv1 = ~gen,
			gen_inv2 = ~gen_inv1,
			gen_inv3 = ~gen_inv2,
			gen_inv4 = ~gen_inv3,
			clk = gen ^ gen_inv4;

always @(negedge clk)
begin 
//Generate syncs and blanking
		
	if(hreg[11:0]==12'd2527)							//limiting horizontal counter
	begin
		hreg[11:0] <= 12'd0;
		if(vreg[9:0]==10'd596)							//limiting vertical counter
		begin
			vreg[9:0] <= 10'd0;
			blink_dev[4:0] <= blink_dev[4:0] + 5'd1;	//blink divider increment
		end
		else		
			vreg[9:0] <= vreg[9:0] + 10'd1;			//increment vertical counter
	end
	else
		hreg[11:0] <= hreg[11:0] + 12'd1;			//increment horizontal counter with freq 50MHz
	
	if((hreg[11:0]==12'd2080) && host_reset)			//hsync beginning  (2 symbol shift)
		hs <= 1'd0;
	
	if(hreg[11:0]==12'd2432)							//hsync ending (2 symbol shift)
		hs <= 1'd1;
			
	if((vreg[9:0]==10'd545) && host_reset)				//vsync beginning
		vs <= 1'd0;
		
	if(vreg[9:0]==10'd548)								//vsync ending
		vs <= 1'd1;
	
	if((vreg[9:0]<10'd512) && host_reset)					//host_busy signal generate
		host_busy <= 1'b1;
	else
		host_busy <= 1'b0;
	
	if((hreg[11:0]>12'd15) && (hreg[11:0]<12'd2064) && host_busy && host_reset)	//paint
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
	
	if(hreg[3:0] == 4'd0)								 
		ram_addr_int[13:0] <= {2'b00,vreg[8:4],hreg[10:4]};		//Set sym ASCII RAM address
		
	if(hreg[3:0]==4'd4)							
	begin
		temp_reg1[7:0] <= ram_input[7:0];			//Read sym (bit 8) ASCII RAM code to temp_reg3 register
		ram_addr_int[13:0] <= {2'b01,vreg[8:4],hreg[10:4]};	//Set sym attribute RAM address
	end
	
	if(hreg[3:0]==4'd8)
	begin
		rom_addr_int[16:0] <= {ram_input[7:3],temp_reg1[7:0],vreg[3:0]};	//Set sym ROM address 
		sym_attr[2:0] <= ram_input[2:0];				//Read sym attribute RAM code to temp_reg2 register
		ram_addr_int[13:0] <= {2'b10,vreg[8:4],hreg[10:4]};	//Set sym color RAM address 
	end
	
	if(hreg[3:0]==4'd15)
	begin
		if(sym_attr[2] && ((vreg[3:0] == (4'd11 + cntrl_reg[4:3]))||(vreg[3:0] == (4'd12 + cntrl_reg[4:3]))))
			rom_reg[7:0] <= 8'd255;						//underline painting
		else
			rom_reg[7:0] <= rom_input[7:0];			//Move sym bitmap ROM code to rom_reg register

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
	if(host_reset)
		cntrl_reg[2] <= 1'b0;
		
	if(host_ad)												//select adress/command
		if(cntrl_reg[2])
		begin
			if(host_data[7:6] == 2'b00)				//save command
				rom_addr_ext[5:0] <= host_data[5:0];
			if(host_data[7:6] == 2'b01)				//save command
				rom_addr_ext[11:6] <= host_data[5:0];
			if(host_data[7:6] == 2'b10)				//save command
				rom_addr_ext[16:12] <= host_data[4:0];					
		end
		else
		begin
			if(host_data[7])								//save command
				if(host_data[6:5] == 2'b11)
					cntrl_reg[4:0] <= host_data[4:0];
				else
					ram_addr_ext[13:7] <= host_data[6:0];
			else
				ram_addr_ext[6:0] <= host_data[6:0];
		
		end
	else
	begin
		if(ram_addr_ext[13:0] == 14'd12287)				//column address correction
			ram_addr_ext[13:0] <= 14'd0;					//reset memory address	
		else
			ram_addr_ext[13:0] <= ram_addr_ext[13:0] + 14'd1;	//increment RAM address
	end
end
endmodule
