//---------------------------------------------------------------------------
#include <stdio.h>
#include <conio.h>
#include <string.h>
#pragma hdrstop

unsigned char buffer[100000];
unsigned char string[256];
unsigned char fnt[4096];

FILE *fp_in,*fp_out;
unsigned int i,c,start=0,end=0,addr,conv=0,miss=0;
unsigned long len,tmp;

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
      if((fp_in=fopen(argv[1],"rb"))==NULL)
	    {
		    printf("\nERROR of open file %s",argv[1]);
		    goto exit;
	    }
    }
  }
  else
  {
    printf("\nInvalid argument string. Please type only a filename in argument.");
    goto exit;
  }

 	for(len=0;(c=fgetc(fp_in))!=EOF;len++);

  if(len > 100000)
  {
    printf("\nFile %s (%ld bytes) is bigger than 100000 bytes.\n",argv[1],len);
    goto exit1;
  }
  else
	  printf("\nSuccesfully open file %s (%ld bytes).",argv[1],len);

	printf("\nReading header:");

	fseek(fp_in,0,SEEK_SET);
	fread(buffer,sizeof(char),len,fp_in);

  printf("\n00H - 2 bytes | Version: %d.%d.",buffer[0x01],buffer[0x00]);

	addr=0x02;
	len=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\n02H - 4 bytes | Size of file: %ld bytes.",len);

  addr=0x06;
  for(i=0;i<60;i++)
    string[i]=buffer[i+addr];
  printf("\n06H - 60 bytes | Copyright: %s.",string);

	addr=0x42;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n42H - 2 bytes | Type: %XH.",len);

	addr=0x44;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n44H - 2 bytes | Point size: %ld.",len);

  addr=0x46;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n46H - 2 bytes | Vertical resolution: %ld.",len);

  addr=0x48;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n48H - 2 bytes | Horizontal resolution: %ld.",len);

  addr=0x4A;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n4AH - 2 bytes | Ascent: %ld.",len);

  addr=0x4C;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n4CH - 2 bytes | Internal leading: %ld.",len);

  addr=0x4E;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n4EH - 2 bytes | External leading: %ld.",len);

  printf("\n50H - 1 byte | Italic: %ld.",buffer[0x50]);

  printf("\n51H - 1 byte | Underline: %ld.",buffer[0x51]);

  printf("\n52H - 1 byte | Strike out: %ld.",buffer[0x52]);

  addr=0x53;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n53H - 2 bytes | Weight: %ld.",len);

  printf("\n55H - 1 byte | Char set: %ld.",buffer[0x55]);

  addr=0x56;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n56H - 2 bytes | Pixel width: %ld.",len);

  addr=0x58;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n58H - 2 bytes | Pixel heigh: %ld.",len);

  printf("\n5AH - 1 byte | Pitch and famile: %XH.",buffer[0x5A]);

  addr=0x5B;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n5BH - 2 bytes | Avg width: %ld.",len);

  addr=0x5D;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n5DH - 2 bytes | Max width: %ld.",len);

  printf("\n5FH - 1 byte | First char: %XH.",buffer[0x5F]);

  printf("\n60H - 1 byte | Last char %XH.",buffer[0x60]);

  printf("\n61H - 1 byte | Default char: %XH.",buffer[0x61]);

  printf("\n62H - 1 byte | Break char: %XH.",buffer[0x62]);

  addr=0x63;
	len=buffer[addr]+((long)buffer[addr+1]<<8);
	printf("\n63H - 2 bytes | Width bytes: %ld.",len);

  addr=0x65;
	len=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\n65H - 4 bytes | Offset of the device name string: %XH.",len);

  if(len)
  {
    for(i=0;i<80;i++)
    {
      string[i]=buffer[i+len];
      if(string[i] == 0)
        break;
    }
    printf("\nDevice name string: %s.",string);
  }

  addr=0x69;
	len=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\n69H - 4 bytes | Offset of the face name string: %XH.",len);

  if(len)
  {
    for(i=0;i<80;i++)
    {
      string[i]=buffer[i+len];
      if(string[i] == 0)
        break;
    }
    printf("\nFace name string: %s.",string);
    end = len;
  }

  addr=0x6D;
	len=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\n6DH - 4 bytes | Address of the bitmap: %XH.",len);

  addr=0x71;
	len=buffer[addr]+((long)buffer[addr+1]<<8)+((long)buffer[addr+2]<<16)+((long)buffer[addr+3]<<24);
	printf("\n71H - 4 bytes | Offset of the bitmap: %XH.",len);

  start = len;
	printf("\nLength of the bitmap field: %ld.",end-start);

  printf("\n75H - 1 byte | Reserved (must be 0): %XH.",buffer[0x75]);

  addr=0x76;
  printf("\n76H - Reading table (length - %ld bytes):",start - addr);

  for(i=buffer[0x5F];i<=buffer[0x60];i++)
  {
    len=buffer[addr+4*i]+((long)buffer[addr+4*i+1]<<8);
    tmp=buffer[addr+4*i+2]+((long)buffer[addr+4*i+3]<<8);
	  printf("\nSymbol %02XH: %ld bits, %X04H offset.",i,len,tmp);

    if(len)
      conv++;
    else
      miss++;

    for(c=0;c<16;c++)
      if(len)
        fnt[i*16+c]=buffer[tmp+c];
      else
        fnt[i*16+c]=0;
  }

  printf("\n%d chars converting, %d chars missing.",conv,miss);

  for(i=0;i<80;i++)
  {
    if(argv[1][i]=='.')
    {
      argv[1][i+7]=argv[1][i+4];
      argv[1][i+6]=argv[1][i+3];
      argv[1][i+5]=argv[1][i+2];
      argv[1][i+4]=argv[1][i+1];
      argv[1][i+3]=argv[1][i];
      argv[1][i+2]=']';
      argv[1][i+1]='1';
      argv[1][i]='[';
      break;
    }
  }

  printf("\nSaving file %s ... ",argv[1]);
  if((fp_out=fopen(argv[1],"wb"))==NULL)
  {
    printf("\nError creating file %s.",argv[1]);
    goto exit1;
  }

  fseek(fp_out,0,SEEK_SET);
	fwrite(fnt,sizeof(char),4096,fp_out);
  fclose(fp_out);
  printf("done.");
exit1:
	fclose(fp_in);
exit:
  puts("\nProgram stopped. Press any key.\n");
  getch();
  return 0;
}
//---------------------------------------------------------------------------


