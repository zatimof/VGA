#define _BUSY 0x80
#define _AD 0x02
#define CS 0x04
#define _RESET 0x08
#define DELAY 0xFF
#define FSIZE 131072

#include <stdio.h>
#include <conio.h>
#include <Windows.h>
#pragma hdrstop

unsigned char buffer[FSIZE],m=0,t=0;
unsigned int baseaddr=0,i,k,filesize=0;
HMODULE hm;
FILE *fp;
typedef void _stdcall (*writef)(unsigned long port, unsigned char Value);
typedef unsigned char _stdcall (*readf)(unsigned long port);
writef DlPortWritePortUchar = NULL;
readf DlPortReadPortUchar = NULL;

void pause(int cycles);
void tika(void);
void tikd(void);
//---------------------------------------------------------------------------

#pragma argsused
int main(int argc, char* argv[])
{
  puts("VGA card lpt tester. v.1.0.\n");

  if(argc < 2)
  {
  	puts("Format: lpt_test.exe LPTx xxx.dat");
    puts("LPTx - LPT port number, LPT1 or LPT2 or LPT3");
    puts("xxx.dat - filename of codegen data");
    goto exit0;
  }

  if(argc > 2)
  {
	  if((argv[1][0] == 'L') && (argv[1][1] == 'P') && (argv[1][2] == 'T'))
  	{
      switch (argv[1][3])
      {
  			case '1': baseaddr = 0x378; break;
	    	case '2': baseaddr = 0x278; break;
  	  	case '3': baseaddr = 0x3BC; break;
    		default:
      	{
     			puts("Wrong LPT port number (LPTx, x = 1, 2, 3).");
     			goto exit0;
      	}
      }
  	}
    else
    {
     	puts("Invalid LPT port number (LPTx, x = 1, 2, 3).");
     	goto exit0;
    }

    if(strlen(argv[2]) < 3)
    {
    	printf("Bad name of open file %s.\n",argv[2]);
    	goto exit0;
    }
    else
    {
      if((fp=fopen(argv[2],"rb")) == NULL)
      {
    		printf("Can't open file %s.\n",argv[2]);
        goto exit0;
      }
      else
      {
        fseek(fp,0,SEEK_SET);
        filesize = fread(buffer,sizeof(char),FSIZE,fp);
    		printf("Succesfully opened file %s (%d bytes).\n",argv[2],filesize);
      }
    }
  }
  else
  {
  	puts("Missing required argument.");
    goto exit0;
  }

  printf("Using %s with baseaddress %XH.\n",argv[1],baseaddr);

  hm = LoadLibrary("DLPORTIO.DLL");

  if(hm == NULL)
  {
    puts("DLPORTIO.DLL not found.\n");
    goto exit1;
  }
  else
  {
    DlPortWritePortUchar = (writef)GetProcAddress(hm,"DlPortWritePortUchar");
    DlPortReadPortUchar = (readf)GetProcAddress(hm,"DlPortReadPortUchar");

    if((DlPortWritePortUchar == NULL) || (DlPortReadPortUchar == NULL))
    {
      puts("The entry point cannot be found in the DLPORTIO.DLL.");
      goto exit2;
    }
    else
    {
      puts("DLPORTIO.DLL opened.");

      if(argc < 4)
     		goto skip;
//enter in flash program state

      DlPortWritePortUchar(baseaddr+2,0x0C);

      DlPortWritePortUchar(baseaddr,0xF4);
      tika();

//erase flash

      puts("Erase chip.");

      DlPortWritePortUchar(baseaddr,0x15);
      tika();

      DlPortWritePortUchar(baseaddr,0x55);
      tika();

      DlPortWritePortUchar(baseaddr,0x85);
      tika();

      DlPortWritePortUchar(baseaddr+2,0x0E);

      DlPortWritePortUchar(baseaddr,0xAA);
      tikd();

      DlPortWritePortUchar(baseaddr+2,0x0C);
//////////
			DlPortWritePortUchar(baseaddr,0x2A);
      tika();

      DlPortWritePortUchar(baseaddr,0x6A);
      tika();

      DlPortWritePortUchar(baseaddr,0x82);
      tika();

      DlPortWritePortUchar(baseaddr+2,0x0E);

      DlPortWritePortUchar(baseaddr,0x55);
      tikd();

      DlPortWritePortUchar(baseaddr+2,0x0C);
///////////
			DlPortWritePortUchar(baseaddr,0x15);
      tika();

      DlPortWritePortUchar(baseaddr,0x55);
      tika();

      DlPortWritePortUchar(baseaddr,0x85);
      tika();

      DlPortWritePortUchar(baseaddr+2,0x0E);

      DlPortWritePortUchar(baseaddr,0x80);
      tikd();

      DlPortWritePortUchar(baseaddr+2,0x0C);
///////////
			DlPortWritePortUchar(baseaddr,0x15);
      tika();

      DlPortWritePortUchar(baseaddr,0x55);
      tika();

      DlPortWritePortUchar(baseaddr,0x85);
      tika();

      DlPortWritePortUchar(baseaddr+2,0x0E);

      DlPortWritePortUchar(baseaddr,0xAA);
      tikd();

      DlPortWritePortUchar(baseaddr+2,0x0C);
/////////
			DlPortWritePortUchar(baseaddr,0x2A);
      tika();

      DlPortWritePortUchar(baseaddr,0x6A);
      tika();

      DlPortWritePortUchar(baseaddr,0x82);
      tika();

      DlPortWritePortUchar(baseaddr+2,0x0E);

      DlPortWritePortUchar(baseaddr,0x55);
      tikd();

      DlPortWritePortUchar(baseaddr+2,0x0C);
///////////
			DlPortWritePortUchar(baseaddr,0x15);
      tika();

      DlPortWritePortUchar(baseaddr,0x55);
      tika();

      DlPortWritePortUchar(baseaddr,0x85);
      tika();

      DlPortWritePortUchar(baseaddr+2,0x0E);

      DlPortWritePortUchar(baseaddr,0x10);
      tikd();

      DlPortWritePortUchar(baseaddr+2,0x0C);

			pause(DELAY*100000);

//program flash

      for(i=0;i<FSIZE;i++)
      {
      	DlPortWritePortUchar(baseaddr,0x15);
      	tika();

        DlPortWritePortUchar(baseaddr,0x55);
      	tika();

        DlPortWritePortUchar(baseaddr,0x85);
      	tika();

        DlPortWritePortUchar(baseaddr+2,0x0E);

        DlPortWritePortUchar(baseaddr,0xAA);
      	tikd();

        DlPortWritePortUchar(baseaddr+2,0x0C);
//////////
        DlPortWritePortUchar(baseaddr,0x2A);
      	tika();

        DlPortWritePortUchar(baseaddr,0x6A);
      	tika();

        DlPortWritePortUchar(baseaddr,0x82);
      	tika();

        DlPortWritePortUchar(baseaddr+2,0x0E);

        DlPortWritePortUchar(baseaddr,0x55);
      	tikd();

        DlPortWritePortUchar(baseaddr+2,0x0C);
///////////
        DlPortWritePortUchar(baseaddr,0x15);
      	tika();

        DlPortWritePortUchar(baseaddr,0x55);
      	tika();

        DlPortWritePortUchar(baseaddr,0x85);
      	tika();

        DlPortWritePortUchar(baseaddr+2,0x0E);

        DlPortWritePortUchar(baseaddr,0xA0);
      	tikd();

        DlPortWritePortUchar(baseaddr+2,0x0C);
////////////
       	DlPortWritePortUchar(baseaddr,(i&0x0003F));
      	tika();

        DlPortWritePortUchar(baseaddr,((i&0x00FC0)>>6) + 0x40);
      	tika();

        DlPortWritePortUchar(baseaddr,((i&0x1F000)>>12) + 0x80);
      	tika();

        DlPortWritePortUchar(baseaddr+2,0x0E);

        DlPortWritePortUchar(baseaddr,buffer[i]);
      	tikd();

        DlPortWritePortUchar(baseaddr+2,0x0C);

        printf("Programming: %d, %d%% done.\r",i,i*100/FSIZE);
        pause(DELAY*50);
			}
//reset

			DlPortWritePortUchar(baseaddr+2,0x00);
  		pause(DELAY);
  		DlPortWritePortUchar(baseaddr+2,0x04);
  		pause(DELAY);

//test

skip:
      DlPortWritePortUchar(baseaddr+2,0x0C);

      DlPortWritePortUchar(baseaddr,0x00);
      tika();

      DlPortWritePortUchar(baseaddr,0x80);
      tika();

      DlPortWritePortUchar(baseaddr,0xF0);
			tika();

      DlPortWritePortUchar(baseaddr+2,0x0E);
      pause(DELAY);

      for(i=0;i<4096;i++)
      {
      	DlPortWritePortUchar(baseaddr,i&0xFF);
       	tikd();
      }

			for(i=0;i<4096;i++)
      {
      	DlPortWritePortUchar(baseaddr,0x00);
       	tikd();
      }

      for(i=0;i<4096;i++)
      {
      	DlPortWritePortUchar(baseaddr,0x1F);
       	tikd();
      }

     	DlPortWritePortUchar(baseaddr+2,0x04);
		}
	}


exit2:
  FreeLibrary(hm);
  puts("DLPORTIO.DLL closed.");
exit1:
  fclose(fp);
exit0:
	puts("Press any key for exit.");
  getch();
  return 0;
}
//---------------------------------------------------------------------------

void pause(int cycles)
{
  while(cycles--);
	return;
}

void tika(void)
{
	DlPortWritePortUchar(baseaddr+2,0x08);
  pause(DELAY);
  DlPortWritePortUchar(baseaddr+2,0x0C);
  pause(DELAY);

	return;
}

void tikd(void)
{
	DlPortWritePortUchar(baseaddr+2,0x0A);
  pause(DELAY);
  DlPortWritePortUchar(baseaddr+2,0x0E);
  pause(DELAY);

	return;
}
