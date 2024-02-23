/*
 * a-float.c - functions to allocate arrays of float
 *
 * copyright (c) 1991, George K. Thiruvathukal
 * This file is distributed with the Apt Compiler Toolkit
 */

#include "a-float.h"

#include <stdio.h>
#include <stdlib.h>

#ifdef __STDC__
float *New1DOffloat (int l1, int h1)
#else
float *New1DOffloat (l1, h1)
int l1, h1;
#endif
{
  float *x = (float *)calloc( (h1 - l1 + 1), sizeof(float));
  if (x == NULL) {
    fprintf(stderr,"New1DOffloat: allocation failure.\n");
    return NULL;
  }
  return x - l1;
}

#ifdef __STDC__
float **New2DOffloat (int l1, int h1, int l2, int h2)
#else
float **New2DOffloat (l1, h1, l2, h2)
int l1, h1, l2, h2;
#endif
{
  float **x = (float **)calloc( (h1 - l1 + 1), sizeof(float *));
  int i;

  
  if (x == NULL) {
    fprintf(stderr,"New2DOffloat: allocation failure; dimension 1\n");
    return NULL;
  }
  x -= l1;
  for (i=l1; i <= h1; i++) {
    x[i] = New1DOffloat (l2, h2);
    if (x[i] == NULL) {
      fprintf(stderr,"New2DOffloat: allocation failure; dimension 2\n");
      return NULL;
    }
  }
  return x;
}
    
#ifdef __STDC__
float ***New3DOffloat (int l1, int h1, int l2, int h2, int l3, int h3)
#else
float ***New3DOffloat (l1, h1, l2, h2, l3, h3)
int l1, h1, l2, h2, l3, h3;
#endif
{
  float ***x = (float ***)calloc( (h1 - l1 + 1), sizeof(float **));
  int i;

  if (x == NULL) {
    fprintf(stderr,"New3DOffloat: allocation failure; dimension 1\n");
    return NULL;
  }
  x -= l1;
  for (i=l1; i <= h1; i++) {
    x[i] = New2DOffloat (l2, h2, l3, h3);
    if (x[i] == NULL) {
      fprintf(stderr,"New3DOffloat: allocation failure; dimension 2\n");
      return NULL;
    }
  }
  return x;
}

#ifdef __STDC__
void Dispose1DOffloat (float *a)
#else
void Dispose1DOffloat (a)
float *a;
#endif
{
  free(a);
}

#ifdef __STDC__
void Dispose2DOffloat (float **a, int l1, int h1)
#else
void Dispose2DOffloat (a, l1, h1)
float **a;
int l1, h1;
#endif
{
  int i;

  for (i=l1; i <= h1; i++)
    Dispose1DOffloat (a[i]);
}

#ifdef __STDC__
void Dispose3DOffloat (float ***a, int l1, int h1, int l2, int h2)
#else
void Dispose3DOffloat (a, l1, h1, l2, h2)
float ***a;
int l1, h1, l2, h2;
#endif
{
  int i;

  for (i=l1; i <= h1; i++)
    Dispose2DOffloat (a[i],l2,h2);
}
