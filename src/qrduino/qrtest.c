
#include "beebsc.c"
#include "main.c"
#include "/home/soxehli/work/egraph_isa_compiler_codesign/embench-iot/config/riscv32/boards/ri5cyverilator/boardsupport.c"


/* BEEBS qrduino benchmark

   This version, copyright (C) 2014-2019 Embecosm Limited and University of
   Bristol

   Contributor James Pallister <james.pallister@bristol.ac.uk>
   Contributor Jeremy Bennett <jeremy.bennett@embecosm.com>

   This file is part of Embench and was formerly part of the Bristol/Embecosm
   Embedded Benchmark Suite.

   SPDX-License-Identifier: GPL-3.0-or-later

   Original code from: https://github.com/tz1/qrduino */

#include "libc.c"

#include "qrencode.h"

extern unsigned char neccblk1;
extern unsigned char neccblk2;
extern unsigned char datablkw;
extern unsigned char eccblkwid;
extern unsigned char VERSION;
extern unsigned char ECCLEVEL;
extern unsigned char WD, WDB;
#ifndef USEPRECALC
// These are malloced by initframe
extern unsigned char *rlens;
extern unsigned char *framebase;
extern unsigned char *framask;
#else
extern unsigned char rlens[];
extern unsigned char framebase[] PROGMEM;
extern unsigned char framask[] PROGMEM;
#endif

//========================================================================
// Reed Solomon error correction
static unsigned
modnn (unsigned x)
{
  while (x >= 255)
    {
      x -= 255;
      x = (x >> 8) + (x & 255);
    }
  return x;
}

#ifndef RTGENEXPLOG
static const unsigned char g0log[256] PROGMEM = {
  0xff, 0x00, 0x01, 0x19, 0x02, 0x32, 0x1a, 0xc6, 0x03, 0xdf, 0x33, 0xee,
    0x1b, 0x68, 0xc7, 0x4b,
  0x04, 0x64, 0xe0, 0x0e, 0x34, 0x8d, 0xef, 0x81, 0x1c, 0xc1, 0x69, 0xf8,
    0xc8, 0x08, 0x4c, 0x71,
  0x05, 0x8a, 0x65, 0x2f, 0xe1, 0x24, 0x0f, 0x21, 0x35, 0x93, 0x8e, 0xda,
    0xf0, 0x12, 0x82, 0x45,
  0x1d, 0xb5, 0xc2, 0x7d, 0x6a, 0x27, 0xf9, 0xb9, 0xc9, 0x9a, 0x09, 0x78,
    0x4d, 0xe4, 0x72, 0xa6,
  0x06, 0xbf, 0x8b, 0x62, 0x66, 0xdd, 0x30, 0xfd, 0xe2, 0x98, 0x25, 0xb3,
    0x10, 0x91, 0x22, 0x88,
  0x36, 0xd0, 0x94, 0xce, 0x8f, 0x96, 0xdb, 0xbd, 0xf1, 0xd2, 0x13, 0x5c,
    0x83, 0x38, 0x46, 0x40,
  0x1e, 0x42, 0xb6, 0xa3, 0xc3, 0x48, 0x7e, 0x6e, 0x6b, 0x3a, 0x28, 0x54,
    0xfa, 0x85, 0xba, 0x3d,
  0xca, 0x5e, 0x9b, 0x9f, 0x0a, 0x15, 0x79, 0x2b, 0x4e, 0xd4, 0xe5, 0xac,
    0x73, 0xf3, 0xa7, 0x57,
  0x07, 0x70, 0xc0, 0xf7, 0x8c, 0x80, 0x63, 0x0d, 0x67, 0x4a, 0xde, 0xed,
    0x31, 0xc5, 0xfe, 0x18,
  0xe3, 0xa5, 0x99, 0x77, 0x26, 0xb8, 0xb4, 0x7c, 0x11, 0x44, 0x92, 0xd9,
    0x23, 0x20, 0x89, 0x2e,
  0x37, 0x3f, 0xd1, 0x5b, 0x95, 0xbc, 0xcf, 0xcd, 0x90, 0x87, 0x97, 0xb2,
    0xdc, 0xfc, 0xbe, 0x61,
  0xf2, 0x56, 0xd3, 0xab, 0x14, 0x2a, 0x5d, 0x9e, 0x84, 0x3c, 0x39, 0x53,
    0x47, 0x6d, 0x41, 0xa2,
  0x1f, 0x2d, 0x43, 0xd8, 0xb7, 0x7b, 0xa4, 0x76, 0xc4, 0x17, 0x49, 0xec,
    0x7f, 0x0c, 0x6f, 0xf6,
  0x6c, 0xa1, 0x3b, 0x52, 0x29, 0x9d, 0x55, 0xaa, 0xfb, 0x60, 0x86, 0xb1,
    0xbb, 0xcc, 0x3e, 0x5a,
  0xcb, 0x59, 0x5f, 0xb0, 0x9c, 0xa9, 0xa0, 0x51, 0x0b, 0xf5, 0x16, 0xeb,
    0x7a, 0x75, 0x2c, 0xd7,
  0x4f, 0xae, 0xd5, 0xe9, 0xe6, 0xe7, 0xad, 0xe8, 0x74, 0xd6, 0xf4, 0xea,
    0xa8, 0x50, 0x58, 0xaf,
};

static const unsigned char g0exp[256] PROGMEM = {
  0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1d, 0x3a, 0x74, 0xe8,
    0xcd, 0x87, 0x13, 0x26,
  0x4c, 0x98, 0x2d, 0x5a, 0xb4, 0x75, 0xea, 0xc9, 0x8f, 0x03, 0x06, 0x0c,
    0x18, 0x30, 0x60, 0xc0,
  0x9d, 0x27, 0x4e, 0x9c, 0x25, 0x4a, 0x94, 0x35, 0x6a, 0xd4, 0xb5, 0x77,
    0xee, 0xc1, 0x9f, 0x23,
  0x46, 0x8c, 0x05, 0x0a, 0x14, 0x28, 0x50, 0xa0, 0x5d, 0xba, 0x69, 0xd2,
    0xb9, 0x6f, 0xde, 0xa1,
  0x5f, 0xbe, 0x61, 0xc2, 0x99, 0x2f, 0x5e, 0xbc, 0x65, 0xca, 0x89, 0x0f,
    0x1e, 0x3c, 0x78, 0xf0,
  0xfd, 0xe7, 0xd3, 0xbb, 0x6b, 0xd6, 0xb1, 0x7f, 0xfe, 0xe1, 0xdf, 0xa3,
    0x5b, 0xb6, 0x71, 0xe2,
  0xd9, 0xaf, 0x43, 0x86, 0x11, 0x22, 0x44, 0x88, 0x0d, 0x1a, 0x34, 0x68,
    0xd0, 0xbd, 0x67, 0xce,
  0x81, 0x1f, 0x3e, 0x7c, 0xf8, 0xed, 0xc7, 0x93, 0x3b, 0x76, 0xec, 0xc5,
    0x97, 0x33, 0x66, 0xcc,
  0x85, 0x17, 0x2e, 0x5c, 0xb8, 0x6d, 0xda, 0xa9, 0x4f, 0x9e, 0x21, 0x42,
    0x84, 0x15, 0x2a, 0x54,
  0xa8, 0x4d, 0x9a, 0x29, 0x52, 0xa4, 0x55, 0xaa, 0x49, 0x92, 0x39, 0x72,
    0xe4, 0xd5, 0xb7, 0x73,
  0xe6, 0xd1, 0xbf, 0x63, 0xc6, 0x91, 0x3f, 0x7e, 0xfc, 0xe5, 0xd7, 0xb3,
    0x7b, 0xf6, 0xf1, 0xff,
  0xe3, 0xdb, 0xab, 0x4b, 0x96, 0x31, 0x62, 0xc4, 0x95, 0x37, 0x6e, 0xdc,
    0xa5, 0x57, 0xae, 0x41,
  0x82, 0x19, 0x32, 0x64, 0xc8, 0x8d, 0x07, 0x0e, 0x1c, 0x38, 0x70, 0xe0,
    0xdd, 0xa7, 0x53, 0xa6,
  0x51, 0xa2, 0x59, 0xb2, 0x79, 0xf2, 0xf9, 0xef, 0xc3, 0x9b, 0x2b, 0x56,
    0xac, 0x45, 0x8a, 0x09,
  0x12, 0x24, 0x48, 0x90, 0x3d, 0x7a, 0xf4, 0xf5, 0xf7, 0xf3, 0xfb, 0xeb,
    0xcb, 0x8b, 0x0b, 0x16,
  0x2c, 0x58, 0xb0, 0x7d, 0xfa, 0xe9, 0xcf, 0x83, 0x1b, 0x36, 0x6c, 0xd8,
    0xad, 0x47, 0x8e, 0x00,
};

#define glog(x) __LPM(&g0log[x])
#define gexp(x) __LPM(&g0exp[x])

#else // generate the log and exp tables - some CPU, much less flash, +512 bytes ram which can be shared

unsigned char g0log[256], g0exp[256];
#define glog(x) (g0log[x])
#define gexp(x) (g0exp[x])
static void
gentables ()
{
#define GFPOLY (0x11d)
  unsigned char i, j;
  g0log[0] = 255;
  g0exp[255] = 0;
  j = 1;
  for (i = 0; i < 255; i++)
    {
      g0log[j] = i;
      g0exp[i] = j;
      j <<= 1;
      if (j & 256)
	j ^= GFPOLY;
      j &= 255;
    }
}
#endif

static void
initrspoly (unsigned char eclen, unsigned char *genpoly)
{
  unsigned char i, j;

#ifdef RTGENEXPLOG
  gentables ();
#endif

  genpoly[0] = 1;
  for (i = 0; i < eclen; i++)
    {
      genpoly[i + 1] = 1;
      for (j = i; j > 0; j--)
	genpoly[j] = genpoly[j]
	  ? genpoly[j -
		    1] ^ gexp (modnn (glog (genpoly[j]) + i)) : genpoly[j -
									1];
      genpoly[0] = gexp (modnn (glog (genpoly[0]) + i));
    }
  for (i = 0; i <= eclen; i++)
    genpoly[i] = glog (genpoly[i]);	// use logs for genpoly[]
}

static void
appendrs (unsigned char *data, unsigned char dlen,
	  unsigned char *ecbuf, unsigned char eclen, unsigned char *genpoly)
{
  unsigned char i, j, fb;

  memset (ecbuf, 0, eclen);
  for (i = 0; i < dlen; i++)
    {
      fb = glog (data[i] ^ ecbuf[0]);
      if (fb != 255)		/* fb term is non-zero */
	for (j = 1; j < eclen; j++)
	  ecbuf[j - 1] = ecbuf[j] ^ gexp (modnn (fb + genpoly[eclen - j]));
      else
	memmove (ecbuf, ecbuf + 1, eclen - 1);
      ecbuf[eclen - 1] = fb == 255 ? 0 : gexp (modnn (fb + genpoly[0]));
    }
}

//========================================================================
// 8 bit data to QR-coded 8 bit data
static void
stringtoqr (void)
{
  unsigned i;
  unsigned size, max;
  size = strlen ((char *) strinbuf);

  max = datablkw * (neccblk1 + neccblk2) + neccblk2;
  if (size >= max - 2)
    {
      size = max - 2;
      if (VERSION > 9)
	size--;
    }

  i = size;
  if (VERSION > 9)
    {
      strinbuf[i + 2] = 0;
      while (i--)
	{
	  strinbuf[i + 3] |= strinbuf[i] << 4;
	  strinbuf[i + 2] = strinbuf[i] >> 4;
	}
      strinbuf[2] |= size << 4;
      strinbuf[1] = size >> 4;
      strinbuf[0] = 0x40 | (size >> 12);
    }
  else
    {
      strinbuf[i + 1] = 0;
      while (i--)
	{
	  strinbuf[i + 2] |= strinbuf[i] << 4;
	  strinbuf[i + 1] = strinbuf[i] >> 4;
	}
      strinbuf[1] |= size << 4;
      strinbuf[0] = 0x40 | (size >> 4);
    }
  i = size + 3 - (VERSION < 10);
  while (i < max)
    {
      strinbuf[i++] = 0xec;
      // buffer has room        if (i == max)            break;
      strinbuf[i++] = 0x11;
    }

  // calculate and append ECC
  unsigned char *ecc = &strinbuf[max];
  unsigned char *dat = strinbuf;
  initrspoly (eccblkwid, qrframe);

  for (i = 0; i < neccblk1; i++)
    {
      appendrs (dat, datablkw, ecc, eccblkwid, qrframe);
      dat += datablkw;
      ecc += eccblkwid;
    }
  for (i = 0; i < neccblk2; i++)
    {
      appendrs (dat, datablkw + 1, ecc, eccblkwid, qrframe);
      dat += datablkw + 1;
      ecc += eccblkwid;
    }
  unsigned j;
  dat = qrframe;
  for (i = 0; i < datablkw; i++)
    {
      for (j = 0; j < neccblk1; j++)
	*dat++ = strinbuf[i + j * datablkw];
      for (j = 0; j < neccblk2; j++)
	*dat++ = strinbuf[(neccblk1 * datablkw) + i + (j * (datablkw + 1))];
    }
  for (j = 0; j < neccblk2; j++)
    *dat++ = strinbuf[(neccblk1 * datablkw) + i + (j * (datablkw + 1))];
  for (i = 0; i < eccblkwid; i++)
    for (j = 0; j < neccblk1 + neccblk2; j++)
      *dat++ = strinbuf[max + i + j * eccblkwid];
  memcpy (strinbuf, qrframe, max + eccblkwid * (neccblk1 + neccblk2));

}

//========================================================================
// Frame data insert following the path rules
static unsigned char
ismasked (unsigned char x, unsigned char y)
{
  unsigned bt;
  if (x > y)
    {
      bt = x;
      x = y;
      y = bt;
    }
  bt = y;
  bt += y * y;
#if 0
  // bt += y*y;
  unsigned s = 1;
  while (y--)
    {
      bt += s;
      s += 2;
    }
#endif
  bt >>= 1;
  bt += x;
  return (__LPM (&framask[bt >> 3]) >> (7 - (bt & 7))) & 1;
}

static void
fillframe (void)
{
  int i;
  unsigned char d, j;
  unsigned char x, y, ffdecy, ffgohv;

  memcpy_P (qrframe, framebase, WDB * WD);
  x = y = WD - 1;
  ffdecy = 1;			// up, minus
  ffgohv = 1;

  /* inteleaved data and ecc codes */
  for (i = 0; i < ((datablkw + eccblkwid) * (neccblk1 + neccblk2) + neccblk2);
       i++)
    {
      d = strinbuf[i];
      for (j = 0; j < 8; j++, d <<= 1)
	{
	  if (0x80 & d)
	    SETQRBIT (x, y);
	  do
	    {			// find next fill position
	      if (ffgohv)
		x--;
	      else
		{
		  x++;
		  if (ffdecy)
		    {
		      if (y != 0)
			y--;
		      else
			{
			  x -= 2;
			  ffdecy = !ffdecy;
			  if (x == 6)
			    {
			      x--;
			      y = 9;
			    }
			}
		    }
		  else
		    {
		      if (y != WD - 1)
			y++;
		      else
			{
			  x -= 2;
			  ffdecy = !ffdecy;
			  if (x == 6)
			    {
			      x--;
			      y -= 8;
			    }
			}
		    }
		}
	      ffgohv = !ffgohv;
	    }
	  while (ismasked (x, y));
	}
    }

}

//========================================================================
// Masking 
static void
applymask (unsigned char m)
{
  unsigned char x, y, r3x, r3y;

  switch (m)
    {
    case 0:
      for (y = 0; y < WD; y++)
	for (x = 0; x < WD; x++)
	  if (!((x + y) & 1) && !ismasked (x, y))
	    TOGQRBIT (x, y);
      break;
    case 1:
      for (y = 0; y < WD; y++)
	for (x = 0; x < WD; x++)
	  if (!(y & 1) && !ismasked (x, y))
	    TOGQRBIT (x, y);
      break;
    case 2:
      for (y = 0; y < WD; y++)
	for (r3x = 0, x = 0; x < WD; x++, r3x++)
	  {
	    if (r3x == 3)
	      r3x = 0;
	    if (!r3x && !ismasked (x, y))
	      TOGQRBIT (x, y);
	  }
      break;
    case 3:
      for (r3y = 0, y = 0; y < WD; y++, r3y++)
	{
	  if (r3y == 3)
	    r3y = 0;
	  for (r3x = r3y, x = 0; x < WD; x++, r3x++)
	    {
	      if (r3x == 3)
		r3x = 0;
	      if (!r3x && !ismasked (x, y))
		TOGQRBIT (x, y);
	    }
	}
      break;
    case 4:
      for (y = 0; y < WD; y++)
	for (r3x = 0, r3y = ((y >> 1) & 1), x = 0; x < WD; x++, r3x++)
	  {
	    if (r3x == 3)
	      {
		r3x = 0;
		r3y = !r3y;
	      }
	    if (!r3y && !ismasked (x, y))
	      TOGQRBIT (x, y);
	  }
      break;
    case 5:
      for (r3y = 0, y = 0; y < WD; y++, r3y++)
	{
	  if (r3y == 3)
	    r3y = 0;
	  for (r3x = 0, x = 0; x < WD; x++, r3x++)
	    {
	      if (r3x == 3)
		r3x = 0;
	      if (!((x & y & 1) + !(!r3x | !r3y)) && !ismasked (x, y))
		TOGQRBIT (x, y);
	    }
	}
      break;
    case 6:
      for (r3y = 0, y = 0; y < WD; y++, r3y++)
	{
	  if (r3y == 3)
	    r3y = 0;
	  for (r3x = 0, x = 0; x < WD; x++, r3x++)
	    {
	      if (r3x == 3)
		r3x = 0;
	      if (!(((x & y & 1) + (r3x && (r3x == r3y))) & 1)
		  && !ismasked (x, y))
		TOGQRBIT (x, y);
	    }
	}
      break;
    case 7:
      for (r3y = 0, y = 0; y < WD; y++, r3y++)
	{
	  if (r3y == 3)
	    r3y = 0;
	  for (r3x = 0, x = 0; x < WD; x++, r3x++)
	    {
	      if (r3x == 3)
		r3x = 0;
	      if (!(((r3x && (r3x == r3y)) + ((x + y) & 1)) & 1)
		  && !ismasked (x, y))
		TOGQRBIT (x, y);
	    }
	}
      break;
    }
  return;
}

// Badness coefficients.
static const unsigned char N1 = 3;
static const unsigned char N2 = 3;
static const unsigned char N3 = 40;
static const unsigned char N4 = 10;

static unsigned
badruns (unsigned char length)
{
  unsigned char i;
  unsigned runsbad = 0;
  for (i = 0; i <= length; i++)
    if (rlens[i] >= 5)
      runsbad += N1 + rlens[i] - 5;
  // BwBBBwB
  for (i = 3; i < length - 1; i += 2)
    if (rlens[i - 2] == rlens[i + 2]
	&& rlens[i + 2] == rlens[i - 1]
	&& rlens[i - 1] == rlens[i + 1] && rlens[i - 1] * 3 == rlens[i]
	// white around the black pattern?  Not part of spec
	&& (rlens[i - 3] == 0	// beginning
	    || i + 3 > length	// end
	    || rlens[i - 3] * 3 >= rlens[i] * 4
	    || rlens[i + 3] * 3 >= rlens[i] * 4))
      runsbad += N3;
  return runsbad;
}

static int
badcheck ()
{
  unsigned char x, y, h, b, b1;
  unsigned thisbad = 0;
  int bw = 0;

  // blocks of same color.
  for (y = 0; y < WD - 1; y++)
    for (x = 0; x < WD - 1; x++)
      if ((QRBIT (x, y) && QRBIT (x + 1, y) && QRBIT (x, y + 1) && QRBIT (x + 1, y + 1))	// all black
	  || !(QRBIT (x, y) || QRBIT (x + 1, y) || QRBIT (x, y + 1) || QRBIT (x + 1, y + 1)))	// all white
	thisbad += N2;

  // X runs
  for (y = 0; y < WD; y++)
    {
      rlens[0] = 0;
      for (h = b = x = 0; x < WD; x++)
	{
	  if ((b1 = QRBIT (x, y)) == b)
	    rlens[h]++;
	  else
	    rlens[++h] = 1;
	  b = b1;
	  bw += b ? 1 : -1;
	}
      thisbad += badruns (h);
    }

  // black/white imbalance
  if (bw < 0)
    bw = -bw;

  unsigned long big = bw;
  unsigned count = 0;
  big += big << 2;
  big <<= 1;
  while (big > WD * WD)
    big -= WD * WD, count++;
  thisbad += count * N4;

  // Y runs
  for (x = 0; x < WD; x++)
    {
      rlens[0] = 0;
      for (h = b = y = 0; y < WD; y++)
	{
	  if ((b1 = QRBIT (x, y)) == b)
	    rlens[h]++;
	  else
	    rlens[++h] = 1;
	  b = b1;
	}
      thisbad += badruns (h);
    }
  return thisbad;
}

// final format bits with mask
// level << 3 | mask
static const unsigned fmtword[] PROGMEM = {
  0x77c4, 0x72f3, 0x7daa, 0x789d, 0x662f, 0x6318, 0x6c41, 0x6976,	//L
  0x5412, 0x5125, 0x5e7c, 0x5b4b, 0x45f9, 0x40ce, 0x4f97, 0x4aa0,	//M
  0x355f, 0x3068, 0x3f31, 0x3a06, 0x24b4, 0x2183, 0x2eda, 0x2bed,	//Q
  0x1689, 0x13be, 0x1ce7, 0x19d0, 0x0762, 0x0255, 0x0d0c, 0x083b,	//H
};

static void
addfmt (unsigned char masknum)
{
  unsigned fmtbits;
  unsigned char i, lvl = ECCLEVEL - 1;

  fmtbits = pgm_read_word (&fmtword[masknum + (lvl << 3)]);
  // low byte
  for (i = 0; i < 8; i++, fmtbits >>= 1)
    if (fmtbits & 1)
      {
	SETQRBIT (WD - 1 - i, 8);
	if (i < 6)
	  SETQRBIT (8, i);
	else
	  SETQRBIT (8, i + 1);
      }
  // high byte
  for (i = 0; i < 7; i++, fmtbits >>= 1)
    if (fmtbits & 1)
      {
	SETQRBIT (8, WD - 7 + i);
	if (i)
	  SETQRBIT (6 - i, 8);
	else
	  SETQRBIT (7, 8);
      }
}

void
qrencode ()
{
  unsigned mindem = 30000;
  unsigned char best = 0;
  unsigned char i;
  unsigned badness;

  stringtoqr ();
  fillframe ();			// Inisde loop to avoid having separate mask buffer
  memcpy (strinbuf, qrframe, WD * WDB);
  for (i = 0; i < 8; i++)
    {
      applymask (i);		// returns black-white imbalance
      badness = badcheck ();
#if 0				//ndef PUREBAD
      if (badness < WD * WD * 5 / 4)
	{			// good enough - masks grow in compute complexity
	  best = i;
	  break;
	}
#endif
      if (badness < mindem)
	{
	  mindem = badness;
	  best = i;
	}
      if (best == 7)
	break;			// don't increment i to avoid redoing mask
      memcpy (qrframe, strinbuf, WD * WDB);	// reset filled frame
    }
  if (best != i)		// redo best mask - none good enough, last wasn't best
    applymask (best);
  addfmt (best);		// add in final format bytes
}


/*
   Local Variables:
   mode: C
   c-file-style: "gnu"
   End:
*/




/* BEEBS qrduino benchmark

   This version, copyright (C) 2014-2019 Embecosm Limited and University of
   Bristol

   Contributor James Pallister <james.pallister@bristol.ac.uk>
   Contributor Jeremy Bennett <jeremy.bennett@embecosm.com>

   This file is part of Embench and was formerly part of the Bristol/Embecosm
   Embedded Benchmark Suite.

   SPDX-License-Identifier: GPL-3.0-or-later

   Original code from: https://github.com/tz1/qrduino */

#include <string.h>
#include <stdlib.h>

/* Header for BEEBS library calls */

#include "beebsc.h"

#ifndef __AVR__
#define PROGMEM
#define memcpy_P memcpy
#define __LPM(x) *x
#define pgm_read_word(x) *x
#else
#include <avr/pgmspace.h>
#endif

unsigned char *framebase;
unsigned char *framask;
unsigned char *rlens;
unsigned char VERSION;
unsigned char WD, WDB;		// filled in from verison by initframe

#define QRBIT(x,y) ( ( framebase[((x)>>3) + (y) * WDB] >> (7-((x) & 7 ))) & 1 )
#define SETQRBIT(x,y) framebase[((x)>>3) + (y) * WDB] |= 0x80 >> ((x) & 7)

static void
setmask (unsigned char x, unsigned char y)
{
  unsigned bt;
  if (x > y)
    {
      bt = x;
      x = y;
      y = bt;
    }
  // y*y = 1+3+5...
  bt = y;
  bt *= y;
  bt += y;
  bt >>= 1;
  bt += x;
  framask[bt >> 3] |= 0x80 >> (bt & 7);
}

static void
putfind ()
{
  unsigned char j, i, k, t;
  for (t = 0; t < 3; t++)
    {
      k = 0;
      i = 0;
      if (t == 1)
	k = (WD - 7);
      if (t == 2)
	i = (WD - 7);
      SETQRBIT (i + 3, k + 3);
      for (j = 0; j < 6; j++)
	{
	  SETQRBIT (i + j, k);
	  SETQRBIT (i, k + j + 1);
	  SETQRBIT (i + 6, k + j);
	  SETQRBIT (i + j + 1, k + 6);
	}
      for (j = 1; j < 5; j++)
	{
	  setmask (i + j, k + 1);
	  setmask (i + 1, k + j + 1);
	  setmask (i + 5, k + j);
	  setmask (i + j + 1, k + 5);
	}
      for (j = 2; j < 4; j++)
	{
	  SETQRBIT (i + j, k + 2);
	  SETQRBIT (i + 2, k + j + 1);
	  SETQRBIT (i + 4, k + j);
	  SETQRBIT (i + j + 1, k + 4);
	}
    }
}

static void
putalign (int x, int y)
{
  int j;

  SETQRBIT (x, y);
  for (j = -2; j < 2; j++)
    {
      SETQRBIT (x + j, y - 2);
      SETQRBIT (x - 2, y + j + 1);
      SETQRBIT (x + 2, y + j);
      SETQRBIT (x + j + 1, y + 2);
    }
  for (j = 0; j < 2; j++)
    {
      setmask (x - 1, y + j);
      setmask (x + 1, y - j);
      setmask (x - j, y - 1);
      setmask (x + j, y + 1);
    }
}

static const unsigned char adelta[41] PROGMEM = {
  0, 11, 15, 19, 23, 27, 31,	// force 1 pat
  16, 18, 20, 22, 24, 26, 28, 20, 22, 24, 24, 26, 28, 28, 22, 24, 24,
  26, 26, 28, 28, 24, 24, 26, 26, 26, 28, 28, 24, 26, 26, 26, 28, 28,
};

static void
doaligns (void)
{
  unsigned char delta, x, y;
  if (VERSION < 2)
    return;
  delta = __LPM (&adelta[VERSION]);
  y = WD - 7;
  for (;;)
    {
      x = WD - 7;
      while (x > delta - 3U)
	{
	  putalign (x, y);
	  if (x < delta)
	    break;
	  x -= delta;
	}
      if (y <= delta + 9U)
	break;
      y -= delta;
      putalign (6, y);
      putalign (y, 6);
    }
}

static const unsigned vpat[] PROGMEM = {
  0xc94, 0x5bc, 0xa99, 0x4d3, 0xbf6, 0x762, 0x847, 0x60d,
  0x928, 0xb78, 0x45d, 0xa17, 0x532, 0x9a6, 0x683, 0x8c9,
  0x7ec, 0xec4, 0x1e1, 0xfab, 0x08e, 0xc1a, 0x33f, 0xd75,
  0x250, 0x9d5, 0x6f0, 0x8ba, 0x79f, 0xb0b, 0x42e, 0xa64,
  0x541, 0xc69
};

static void
putvpat (void)
{
  unsigned char vers = VERSION;
  unsigned char x, y, bc;
  unsigned verinfo;
  if (vers < 7)
    return;
  verinfo = pgm_read_word (&vpat[vers - 7]);

  bc = 17;
  for (x = 0; x < 6; x++)
    for (y = 0; y < 3; y++, bc--)
      if (1 & (bc > 11 ? (unsigned) vers >> (bc - 12) : verinfo >> bc))
	{
	  SETQRBIT (5 - x, 2 - y + WD - 11);
	  SETQRBIT (2 - y + WD - 11, 5 - x);
	}
      else
	{
	  setmask (5 - x, 2 - y + WD - 11);
	  setmask (2 - y + WD - 11, 5 - x);
	}
}

void
initframe ()
{
  unsigned x, y;

  framebase = calloc_beebs (WDB * WD, 1);
  framask = calloc_beebs (((WD * (WD + 1) / 2) + 7) / 8, 1);
  rlens = malloc_beebs (WD + 1);
  // finders
  putfind ();
  // alignment blocks
  doaligns ();
  // single black
  SETQRBIT (8, WD - 8);
  // timing gap - masks only
  for (y = 0; y < 7; y++)
    {
      setmask (7, y);
      setmask (WD - 8, y);
      setmask (7, y + WD - 7);
    }
  for (x = 0; x < 8; x++)
    {
      setmask (x, 7);
      setmask (x + WD - 8, 7);
      setmask (x, WD - 8);
    }
  // reserve mask-format area
  for (x = 0; x < 9; x++)
    setmask (x, 8);
  for (x = 0; x < 8; x++)
    {
      setmask (x + WD - 8, 8);
      setmask (8, x);
    }
  for (y = 0; y < 7; y++)
    setmask (8, y + WD - 7);
  // timing
  for (x = 0; x < (unsigned) WD - 14; x++)
    if (x & 1)
      {
	setmask (8 + x, 6);
	setmask (6, 8 + x);
      }
    else
      {
	SETQRBIT (8 + x, 6);
	SETQRBIT (6, 8 + x);
      }

  // version block
  putvpat ();
  for (y = 0; y < WD; y++)
    for (x = 0; x <= y; x++)
      if (QRBIT (x, y))
	setmask (x, y);
}

void
freeframe ()
{
  free_beebs (framebase);
  free_beebs (framask);
  free_beebs (rlens);
}

unsigned char *strinbuf;
unsigned char *qrframe;
unsigned char ECCLEVEL;
unsigned char neccblk1;
unsigned char neccblk2;
unsigned char datablkw;
unsigned char eccblkwid;

#ifndef __AVR__
#define PROGMEM
#define memcpy_P memcpy
#define __LPM(x) *x
#endif

#include "ecctable.h"

unsigned
initecc (unsigned char ecc, unsigned char vers)
{
  VERSION = vers;
  WD = 17 + 4 * vers;
  WDB = (WD + 7) / 8;

  unsigned fsz = WD * WDB;
  if (fsz < 768)		// for ECC math buffers
    fsz = 768;
  qrframe = malloc_beebs (fsz);

  ECCLEVEL = ecc;
  unsigned eccindex = (ecc - 1) * 4 + (vers - 1) * 16;

  neccblk1 = eccblocks[eccindex++];
  neccblk2 = eccblocks[eccindex++];
  datablkw = eccblocks[eccindex++];
  eccblkwid = eccblocks[eccindex++];

  if (fsz <
      (unsigned) (datablkw + (datablkw + eccblkwid) * (neccblk1 + neccblk2) +
		  neccblk2))
    fsz =
      datablkw + (datablkw + eccblkwid) * (neccblk1 + neccblk2) + neccblk2;
  strinbuf = malloc_beebs (fsz);
  return datablkw * (neccblk1 + neccblk2) + neccblk2 - 3;	//-2 if vers <= 9!
}

unsigned
initeccsize (unsigned char ecc, unsigned size)
{
  unsigned eccindex;
  unsigned char vers;
  for (vers = 1; vers < 40; vers++)
    {
      eccindex = (ecc - 1) * 4 + (vers - 1) * 16;
      neccblk1 = eccblocks[eccindex++];
      neccblk2 = eccblocks[eccindex++];
      datablkw = eccblocks[eccindex++];
      if (size < (unsigned) (datablkw * (neccblk1 + neccblk2) + neccblk2 - 3))
	break;
    }
  return initecc (ecc, vers);
}

void
freeecc ()
{
  free_beebs (qrframe);
  free_beebs (strinbuf);
}


/*
   Local Variables:
   mode: C
   c-file-style: "gnu"
   End:
*/




/* BEEBS qrduino benchmark

   This version, copyright (C) 2014-2019 Embecosm Limited and University of
   Bristol

   Contributor James Pallister <james.pallister@bristol.ac.uk>
   Contributor Jeremy Bennett <jeremy.bennett@embecosm.com>

   This file is part of Embench and was formerly part of the Bristol/Embecosm
   Embedded Benchmark Suite.

   SPDX-License-Identifier: GPL-3.0-or-later

   Original code from: https://github.com/tz1/qrduino */

#include "support.h"
#include "qrencode.h"

#include <string.h>

/* This scale factor will be changed to equalise the runtime of the
   benchmarks. */
#define LOCAL_SCALE_FACTOR 5

/* BEEBS heap is just an array */

#define HEAP_SIZE 8192
static char heap[HEAP_SIZE];

static const char *encode;
static int size;

static int benchmark_body (int  rpt);

void
warm_caches (int  heat)
{
  int  res = benchmark_body (heat);

  return;
}


int
benchmark (void)
{
  return benchmark_body (LOCAL_SCALE_FACTOR * CPU_MHZ);
}


static int __attribute__ ((noinline))
benchmark_body (int rpt)
{
  static const char *in_encode = "http://www.mageec.com";
  int i;

  for (i = 0; i < rpt; i++)
    {
      encode = in_encode;
      size = 22;
      init_heap_beebs ((void *) heap, HEAP_SIZE);

      initeccsize (1, size);

      memcpy (strinbuf, encode, size);

      initframe ();
      qrencode ();
      freeframe ();
      freeecc ();
    }

  return 0;
}

void
initialise_benchmark ()
{
}

int
verify_benchmark (int unused)
{
  unsigned char expected[22] = {
    254, 101, 63, 128, 130, 110, 160, 128, 186, 65, 46,
    128, 186, 38, 46, 128, 186, 9, 174, 128, 130, 20
  };

  return (0 == memcmp (strinbuf, expected, 22 * sizeof (strinbuf[0])))
    && check_heap_beebs ((void *) heap);
}


/*
   Local Variables:
   mode: C
   c-file-style: "gnu"
   End:
*/
