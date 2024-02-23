/*
 * array.h - header file for the parameterized array package
 * author: George K. Thiruvathukal
 * note: these routines are supplied with the Apt Compiler Toolkit
 *       copyright (c); 1991, George K. Thiruvathukal
 */

#ifdef __ANSI_C__
float *New1DOffloat (int l1, int h1);
#else
float *New1DOffloat ();
#endif

#ifdef __ANSI_C__
float **New2DOffloat (int l1, int h1, int l2, int h2);
#else
float **New2DOffloat ();
#endif
    
#ifdef __ANSI_C__
float ***New3DOffloat (int l1, int h1, int l2, int h2, int l3, int h3);
#else
float ***New3DOffloat ();
#endif

#ifdef __ANSI_C__
void Dispose1DOffloat (float *a);
#else
void Dispose1DOffloat ();
#endif

#ifdef __ANSI_C__
void Dispose2DOffloat (float **a, int l1, int h1);
#else
void Dispose2DOffloat ();
#endif

#ifdef __ANSI_C__
void Dispose3DOffloat (float ***a, int l1, int h1, int l2, int h2);
#else
void Dispose3DOffloat ();
#endif
