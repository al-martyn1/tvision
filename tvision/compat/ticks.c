/* Copyright (C) 1996-1998 Robert H”hne */
/* Modified by Salvador E. Tropea, Vadim Bolodorov and Anatoli Soltan */
#include <tv/configtv.h>

#ifdef TVCompf_djgpp
#include <sys/farptr.h>
#include <go32.h>

unsigned short CLY_Ticks(void)
{
  return _farpeekw(_dos_ds,0x46c);
}
#endif // DJGPP



#ifdef TVOS_Win32
#define WIN32_LEAN_AND_MEAN
#include <windows.h> //for GetTickCount

unsigned short CLY_Ticks(void)
{
  //  X ms * 1s/1000ms * 18.2 ticks/s = X/55 ticks, roughly.
  return GetTickCount() / 55;
}
#endif // Win32



#ifdef TVOS_UNIX
#include <sys/time.h>
#include <stdio.h> /* for NULL */

unsigned short CLY_Ticks(void)
{
  struct timeval val;
  gettimeofday(&val,(struct timezone *)NULL);
  return (val.tv_sec*18 + (val.tv_usec*18)/1000000);
//  return clock();
}
#endif


#ifdef TVOS_BareMetal
#include "compatlayer.h"

#ifdef TV_ATTRIBUTE_WEAK

// In bare metal version in most cases we have no mouse and next stub not needed
TV_ATTRIBUTE_WEAK
unsigned short CLY_Ticks(void)
{
  static unsigned short t = 0;
  return t++;
}

#else

    #ifdef TV_BARE_METAL_HAS_IMPL_CLY_Ticks
        // Do nothing
    #else
        #error "Implement CLY_Ticks funtion in your code and define macro TV_BARE_METAL_HAS_IMPL_CLY_Ticks"
    #endif

#endif


#endif // TVOS_BareMetal


