/*
 * ===================================================================
 *  TS 26.104
 *  REL-5 V5.4.0 2004-03
 *  REL-6 V6.1.0 2004-03
 *  3GPP AMR Floating-point Speech Codec
 * ===================================================================
 *
 */
/* This is valid for PC */

#ifndef _DEF_
#define _DEF_

#if defined(_WIN32) || defined (__WIN32__) || defined (WIN32)
#define EXPORT_API __declspec(dllexport) __stdcall
#else 
#define EXPORT_API 
#endif

#endif
