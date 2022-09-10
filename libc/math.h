#ifndef _MATH_H_
#define _MATH_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __MWERKS__

/* Metrowerks */
#if __option(little_endian)
#define __IEEE_LITTLE_ENDIAN
#else
#define __IEEE_BIG_ENDIAN
#endif

#else

/* GCC */
#ifdef __BIG_ENDIAN__
#define __IEEE_BIG_ENDIAN
#endif
#ifdef __LITTLE_ENDIAN__
#define __IEEE_LITTLE_ENDIAN
#endif

#endif

#ifndef __IEEE_BIG_ENDIAN
#ifndef __IEEE_LITTLE_ENDIAN
#error Must define endianness
#endif
#endif

#ifndef _INT32
typedef int _INT32;
typedef unsigned int _UINT32;
#endif

#ifdef __MWERKS__
#define abs(n) __abs(n)
#define labs(n) __labs(n)
static inline double fabs(double x) { return __fabs(x); }
static inline float fabsf(float x) { return (float)fabs((double)x); }
#else
static inline int abs(int n) {
  int mask = n >> 31;
  return (n + mask) ^ mask;
}
#endif

extern _INT32 __float_huge[];
extern _INT32 __float_nan[];
extern _INT32 __double_huge[];
extern _INT32 __extended_huge[];

#define HUGE_VAL (*(double*)__double_huge)
#define INFINITY (*(float*)__float_huge)
#define NAN (*(float*)__float_nan)
#define HUGE_VALF (*(float*)__float_huge)
#define HUGE_VALL (*(long double*)__extended_huge)

double fabs(double x);
double sin(double x);
double cos(double x);
double atan(double x);

float sinf(float x);
float cosf(float x);
float tanf(float x);
float acosf(float x);

double ldexp(double x, int exp);

double copysign(double x, double y);

double floor(double x);

double fabs(double x);

#ifdef __MWERKS__
#pragma cplusplus on
#endif

#ifdef __IEEE_LITTLE_ENDIAN
#define __HI(x) (sizeof(x) == 8 ? *(1 + (_INT32*)&x) : (*(_INT32*)&x))
#define __LO(x) (*(_INT32*)&x)
#define __UHI(x) (sizeof(x) == 8 ? *(1 + (_UINT32*)&x) : (*(_UINT32*)&x))
#define __ULO(x) (*(_UINT32*)&x)
#else
#define __LO(x) (sizeof(x) == 8 ? *(1 + (_INT32*)&x) : (*(_INT32*)&x))
#define __HI(x) (*(_INT32*)&x)
#define __ULO(x) (sizeof(x) == 8 ? *(1 + (_UINT32*)&x) : (*(_UINT32*)&x))
#define __UHI(x) (*(_UINT32*)&x)
#endif

#define FP_NAN 1
#define FP_INFINITE 2
#define FP_ZERO 3
#define FP_NORMAL 4
#define FP_SUBNORMAL 5

static inline int __fpclassifyf(float x) {
  switch ((*(_INT32*)&x) & 0x7f800000) {
  case 0x7f800000: {
    if ((*(_INT32*)&x) & 0x007fffff)
      return FP_NAN;
    else
      return FP_INFINITE;
    break;
  }
  case 0: {
    if ((*(_INT32*)&x) & 0x007fffff)
      return FP_SUBNORMAL;
    else
      return FP_ZERO;
    break;
  }
  }
  return FP_NORMAL;
}

static inline int __fpclassifyd(double x) {
  switch (__HI(x) & 0x7ff00000) {
  case 0x7ff00000: {
    if ((__HI(x) & 0x000fffff) || (__LO(x) & 0xffffffff))
      return FP_NAN;
    else
      return FP_INFINITE;
    break;
  }
  case 0: {
    if ((__HI(x) & 0x000fffff) || (__LO(x) & 0xffffffff))
      return FP_SUBNORMAL;
    else
      return FP_ZERO;
    break;
  }
  }
  return FP_NORMAL;
}

#define fpclassify(x) (sizeof(x) == sizeof(float) ? __fpclassifyf((float)(x)) : __fpclassifyd((double)(x)))
#define isnormal(x) (fpclassify(x) == FP_NORMAL)
#define isnan(x) (fpclassify(x) == FP_NAN)
#define isinf(x) (fpclassify(x) == FP_INFINITE)
#define isfinite(x) ((fpclassify(x) > FP_INFINITE))

static inline float sqrtf(float x) {
  static const double _half = .5;
  static const double _three = 3.0;

  if (x > 0.0f) {
    double xd = (double)x;
    double guess = __frsqrte(xd);                          /* returns an approximation to  */
    guess = _half * guess * (_three - guess * guess * xd); /* now have 12 sig bits         */
    guess = _half * guess * (_three - guess * guess * xd); /* now have 24 sig bits         */
    guess = _half * guess * (_three - guess * guess * xd); /* now have 32 sig bits         */
    return (float)(xd * guess);
  } else if (x < 0.0)
    return NAN;
  else if (isnan(x))
    return NAN;
  else
    return x;
}

static inline double sqrt(double x) {
  if (x > 0.0) {
    double guess = __frsqrte(x);                    /* returns an approximation to  */
    guess = .5 * guess * (3.0 - guess * guess * x); /* now have 8 sig bits          */
    guess = .5 * guess * (3.0 - guess * guess * x); /* now have 16 sig bits         */
    guess = .5 * guess * (3.0 - guess * guess * x); /* now have 32 sig bits         */
    guess = .5 * guess * (3.0 - guess * guess * x); /* now have > 53 sig bits       */
    return x * guess;
  } else if (x == 0.0) {
    return 0;
  } else if (x) {
    return NAN;
  }
  return INFINITY;
}

static inline float ldexpf(float x, int exp) { return (float)ldexp((double)x, exp); }
static inline double scalbn(double x, int n) { return ldexp(x, n); }
static inline float scalbnf(float x, int n) { return (float)ldexpf(x, n); }

#ifdef __MWERKS__
#pragma cplusplus reset
#endif

#ifdef __cplusplus
}
#endif

#endif