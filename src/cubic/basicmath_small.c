/* BEEBS cubic benchmark

   This version, copyright (C) 2013-2019 Embecosm Limited and University of
   Bristol

   Contributor: James Pallister <james.pallister@bristol.ac.uk>
   Contributor Jeremy Bennett <jeremy.bennett@embecosm.com>

   This file is part of Embench and was formerly part of the Bristol/Embecosm
   Embedded Benchmark Suite.

   SPDX-License-Identifier: GPL-3.0-or-later

   The original code is from http://www.snippets.org/. */

/* +++Date last modified: 05-Jul-1997 */

/*
 **  CUBIC.C - Solve a cubic polynomial
 **  public domain by Ross Cottrell
 */

#include <math.h>
#include "snipmath.h"
#include "libc.c"

void
SolveCubic (double a, double b, double c, double d, int *solutions, double *x)
{
  long double a1 = (long double) (b / a);
  long double a2 = (long double) (c / a);
  long double a3 = (long double) (d / a);
  long double Q = (a1 * a1 - 3.0L * a2) / 9.0L;
  long double R = (2.0L * a1 * a1 * a1 - 9.0L * a1 * a2 + 27.0L * a3) / 54.0L;
  double R2_Q3 = (double) (R * R - Q * Q * Q);

  double theta;

  if (R2_Q3 <= 0)
    {
      *solutions = 3;
      theta = acos (((double) R) / sqrt ((double) (Q * Q * Q)));
      x[0] = -2.0 * sqrt ((double) Q) * cos (theta / 3.0) - a1 / 3.0;
      x[1] =
	-2.0 * sqrt ((double) Q) * cos ((theta + 2.0 * PI) / 3.0) - a1 / 3.0;
      x[2] =
	-2.0 * sqrt ((double) Q) * cos ((theta + 4.0 * PI) / 3.0) - a1 / 3.0;
    }
  else
    {
      *solutions = 1;
      x[0] = pow (sqrt (R2_Q3) + fabs ((double) R), 1 / 3.0);
      x[0] += ((double) Q) / x[0];
      x[0] *= (R < 0.0L) ? 1 : -1;
      x[0] -= (double) (a1 / 3.0L);
    }
}

/* vim: set ts=3 sw=3 et: */


/*
   Local Variables:
   mode: C
   c-file-style: "gnu"
   End:
*/



/* BEEBS cubic benchmark

   Contributor: James Pallister <james.pallister@bristol.ac.uk>

   This file is part of Embench and was formerly part of the Bristol/Embecosm
   Embedded Benchmark Suite.

   SPDX-License-Identifier: GPL-3.0-or-later */

#include <string.h>
#include "support.h"
#include "snipmath.h"

/* This scale factor will be changed to equalise the runtime of the
   benchmarks. */
#define LOCAL_SCALE_FACTOR 10

#include "main.c"
#include "/home/soxehli/work/egraph_isa_compiler_codesign/embench-iot/config/riscv32/boards/ri5cyverilator/boardsupport.c"


static int soln_cnt0;
static int soln_cnt1;
static double res0[3];
static double res1;


int
verify_benchmark (int res __attribute ((unused)) )
{
  static const double exp_res0[3] = {2.0, 6.0, 2.5};
  const double exp_res1 = 2.5;
  return (3 == soln_cnt0)
    && double_eq_beebs(exp_res0[0], res0[0])
    && double_eq_beebs(exp_res0[1], res0[1])
    && double_eq_beebs(exp_res0[2], res0[2])
    && (1 == soln_cnt1)
    && double_eq_beebs(exp_res1, res1);
}


void
initialise_benchmark (void)
{
}


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


static int
benchmark_body (int rpt)
{
  int  i;

  for (i = 0; i < rpt; i++)
    {
      double  a1 = 1.0, b1 = -10.5, c1 = 32.0, d1 = -30.0;
      double  a2 = 1.0, b2 = -4.5, c2 = 17.0, d2 = -30.0;
      double  a3 = 1.0, b3 = -3.5, c3 = 22.0, d3 = -31.0;
      double  a4 = 1.0, b4 = -13.7, c4 = 1.0, d4 = -35.0;
      int     solutions;

      double output[48] = {0};
      double *output_pos = &(output[0]);

      /* solve some cubic functions */
      /* should get 3 solutions: 2, 6 & 2.5   */
      SolveCubic(a1, b1, c1, d1, &solutions, output);
      soln_cnt0 = solutions;
      memcpy(res0,output,3*sizeof(res0[0]));
      /* should get 1 solution: 2.5           */
      SolveCubic(a2, b2, c2, d2, &solutions, output);
      soln_cnt1 = solutions;
      res1 = output[0];
      SolveCubic(a3, b3, c3, d3, &solutions, output);
      SolveCubic(a4, b4, c4, d4, &solutions, output);
      /* Now solve some random equations */
      for(a1=1;a1<3;a1++) {
	for(b1=10;b1>8;b1--) {
	  for(c1=5;c1<6;c1+=0.5) {
            for(d1=-1;d1>-3;d1--) {
	      SolveCubic(a1, b1, c1, d1, &solutions, output_pos);
            }
	  }
	}
      }
    }

   return 0;
}


/* vim: set ts=3 sw=3 et: */
