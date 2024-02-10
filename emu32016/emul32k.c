// emul32k.c based on Pandora.c
//#include <stdint.h>
#include <inttypes.h>
#include <stdio.h>
#include <string.h>

#include "32016.h"
#include "mem32016.h"
//#include "Profile.h"

#ifdef TRACE_TO_FILE
FILE* pTraceFile = NULL;
#endif

int tubecycles = 0;
int tube_irq = 0;

void tubeWrite(unsigned char Address, unsigned char Data)
{
   unsigned char temp = (Data < ' ') ? ' ' : Data;
//   PiTRACE("tubeWrite(%02X, %02X) %c\n", Address, Data, temp);
   
#ifdef TRACE_TO_FILE
   putchar(temp);
#endif
}

unsigned char tubeRead(unsigned char Address)
{
 //       PiTRACE("tubeRead(%02X)\n", Address);

   return 0x40;
}

void OpenTrace(const char *pFileName)
{
#ifdef TRACE_TO_FILE
   pTraceFile = fopen(pFileName, "wb");
#endif
}

void CloseTrace(void)
{
#ifdef TRACE_TO_FILE
   if (pTraceFile)
   {
      fclose(pTraceFile);
      pTraceFile = 0;
   }
#endif
}

void n32016_dumpregs(char* pMessage)
{
   n32016_ShowRegs(0xFF);
}

void HandleTrap(void)
{
   n32016_dumpregs("HandleTrap() called");
}

int main(int argc, char* argv[])
{
   uint32_t addresse,count,Start,End,oops;
   uint8_t daten;
   int i,j;

   printf("Series 32000 Emulator Version 1.0 of 5 May 2016\n");

   if (argc==1)
   { printf("Usage: emul32k file <dump start> <dump count>\n"); }
   else
   {
       OpenTrace("PandoraTrace.txt");
//       ProfileInit();
       n32016_init();

#ifdef INSTRUCTION_PROFILING
       memset(IP, 0, sizeof(IP));
#endif

#ifdef PANDORA_BASE
       n32016_reset_addr(PANDORA_BASE);
#else
       n32016_reset_addr(0);
#endif

       Start = 0;
       End = LoadBinary(argv[1], Start);

/*       if (End)
       {
           printf("End=%8d\n",End);
           Disassemble(Start, End);
       }
*/
       oops=0;
       while (End)
          {
             tubecycles = 8;
             n32016_exec();
//                printf("%8X \n",pc);
             oops++;
             if (tubecycles<0) {break;}
          }

       printf("%1d instructions executed.\n",oops);

       n32016_ShowRegs(0xFF);

       if (argc>2) { sscanf(argv[2],"%X",&addresse);
                     count = 8; }
       else { count = 0; }

       if (argc>3) { sscanf(argv[3],"%D",&count); }
       for (i=0;i<count;i++)
         {
           printf("%08X",addresse);
           for (j=0;j<16;j++)
             { daten = read_x8(addresse);
               addresse++;
               printf(" %02X",daten); }
           printf("\n");
         }
   }

   return 0;

}

