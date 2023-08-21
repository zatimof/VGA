//---------------------------------------------------------------------------
#include <stdio.h>
#include <conio.h>
#include <string.h>
#pragma hdrstop

unsigned char buffer[256];
unsigned char num_of_use[256];
unsigned char fnt[4096];
unsigned char colors[2400];
unsigned char colors_ega[2400];
unsigned char symbols[2400];
unsigned char data[153600];
unsigned char color[16];
unsigned char selcolor[16];
unsigned char fnt_tmp[16];
unsigned char ega_pal[16]={0,4,2,6,1,5,3,7,8,12,10,14,9,13,11,15};
FILE *fp,*fp_symbol,*fp_fnt,*fp_color;
//char filename[80];
unsigned int c,i,t,num,position=0,num1=0;
unsigned char addr,x,y,z,numcolor=0,errors=0;
unsigned long len,tmp,start_addr=0,width=0,height=0,bits=0,bytes=0;

//---------------------------------------------------------------------------

#pragma argsused
int main(int argc, char* argv[])
{
  if(argc==2)
  {
    if(strlen(argv[1])<3)
	  {
		  printf("\nBad name of open file %s",argv[1]);
		  goto exit;
	  }
    else
    {
      printf("\nOpening file %s...",argv[1]);
      if((fp=fopen(argv[1],"rb"))==NULL)
	    {
		    printf("\nERROR of open file %s",argv[1]);
		    goto exit;
	    }
    }
  }
  else
  {
    puts("\nInvalid argument string. Please type only a filename in argument.");
    goto exit;
  }

 	for(len=0;(c=fgetc(fp))!=EOF;len++);

	printf("\nSuccesfully open file %s (%ld bytes).\n",argv[1],len);

	puts("\nReading header (70 bytes):");

	fseek(fp,0,SEEK_SET);
	fread(buffer,sizeof(char),200,fp);

	if((buffer[0]!=0x42)&&(buffer[1]!=0x4D))
	{
		puts("\nFile is not BMP file.\n");
		goto exit1;
	}
	addr=0x02;
	len=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\nSize of file: %ld bytes.",len);

	addr=0x0A;
	start_addr=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\nStart address of data array: %xH.",start_addr);

	addr=0x12;
	width=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\nWidth of picture: %ld.",width);

	addr=0x16;
	height=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\nHeight of picture: %ld.",height);

	addr=0x1C;
	bits=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\nBits for pixel: %ld.",bits);

	addr=0x22;
	bytes=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\nBytes of data array: %ld.",bytes);

	addr=0x36;
	for(i=0;i<16;i++)
	{
		printf("\nColor %d: %d,%d,%d.",i+1,buffer[addr+4*i],buffer[addr+4*i+1],buffer[addr+4*i+2]);
	}

  if((width==640)&&(height==480)&&(bits==4)&&(bytes==153600))
    puts("\nAnalysing BMP file...");
  else
  {
    puts("\nBMP file is incorrect.");
    goto exit1;
  }

  fseek(fp,start_addr,SEEK_SET);
	tmp=fread(data,sizeof(char),bytes,fp);

  printf("\n%ld bytes of DATA readed.",tmp);

  puts("\nColor analysing...");

  errors=0;
  for(c=0;c<30;c++)
    for(i=0;i<80;i++)
    {
      for(t=0;t<16;t++)
        color[t]=0;
      numcolor=0;

      for(y=0;y<16;y++)
        for(x=0;x<4;x++)
        {
          color[data[c*5120+y*320+i*4+x]&0x0F]++;
          color[(data[c*5120+y*320+i*4+x]&0xF0)>>4]++;
        }

      for(t=0;t<16;t++)
        if(color[t])
        {
          selcolor[numcolor]=t;
          numcolor++;
        }
      //printf("\n%d,%d | color1 - %d, color2 - %d, numcolors - %d",i,c,selcolor[0],selcolor[1],numcolor);

      if(numcolor>2)
        printf("\n%d,%d | numcolors - %d",i,c,numcolor);
      else
      {
        colors[c*80+i]=(selcolor[1]<<4)|selcolor[0];
        colors_ega[c*80+i]=(ega_pal[selcolor[1]]<<4)|ega_pal[selcolor[0]];
      }
    }
  if(errors)
  {
    printf("\nThere %d color errors. Fix them and try again.",errors);
    goto exit1;
  }

  puts("\nSaving color file color.dat");
  if((fp_color=fopen("color.dat","wb"))==NULL)
  {
    puts("\nERROR of creating file color.dat");
    goto exit1;
  }

  fseek(fp_color,0,SEEK_SET);
	fwrite(colors_ega,sizeof(char),2400,fp_color);

  for(t=0;t<256;t++)
    num_of_use[t]=0;

  position=0;
  for(c=0;c<30;c++)
    for(i=0;i<80;i++)
    {
      for(t=0;t<16;t++)
        fnt_tmp[t]=0;

      for(y=0;y<16;y++)
        for(x=0;x<4;x++)
        {
          if((data[c*5120+y*320+i*4+x]&0x0F)==(colors[c*80+i]&0x0F))
            fnt_tmp[y]|=(0x40>>(x<<1));
          if(((data[c*5120+y*320+i*4+x]&0xF0)>>4)==(colors[c*80+i]&0x0F))
            fnt_tmp[y]|=(0x80>>(x<<1));
        }

      if(position)
      {
        num1=0;
        for(num=0;num<position;num++)
        {
          errors=0;
          for(t=0;t<16;t++)
            if(fnt[t+(num<<4)]!=fnt_tmp[t])
               errors++;
          if(errors==0)
          {
            symbols[c*80+i]=num;
            num_of_use[num]++;
          }
          else
            num1++;
        }

        if(num1==position)
        {
          symbols[c*80+i]=num1;
          for(t=0;t<16;t++)
            fnt[t+(position<<4)]=fnt_tmp[t];
          position++;
          num_of_use[num1]++;
        }
      }
      else
      {
        symbols[0]=0;
        for(t=0;t<16;t++)
          fnt[t]=fnt_tmp[t];
        position++;
        num_of_use[0]++;
      }
    }
    printf("\nNumber of unicue sprites - %d",position);
    if(position>256)
    {
      puts("\nNumber of unicue sprites is bigger than 256. Redraw the picture and try again.\n");
      goto exit2;
    }

  puts("\nSaving symbols file symbol.dat");
  if((fp_symbol=fopen("symbol.dat","wb"))==NULL)
  {
    puts("\nERROR of creating file symbol.dat");
    goto exit2;
  }

  fseek(fp_symbol,0,SEEK_SET);
	fwrite(symbols,sizeof(char),2400,fp_symbol);

  puts("\nSaving font file font.fnt");
  if((fp_fnt=fopen("font.fnt","wb"))==NULL)
  {
    puts("\nERROR of creating file font.fnt");
    goto exit3;
  }

  fseek(fp_fnt,0,SEEK_SET);
	fwrite(fnt,sizeof(char),4096,fp_fnt);

  fclose(fp_fnt);
exit3:
  fclose(fp_symbol);
exit2:
  fclose(fp_color);
exit1:
	fclose(fp);
exit:
  puts("\nProgram stopped. Press any key.\n");
  getch();
  return 0;
}
//---------------------------------------------------------------------------

