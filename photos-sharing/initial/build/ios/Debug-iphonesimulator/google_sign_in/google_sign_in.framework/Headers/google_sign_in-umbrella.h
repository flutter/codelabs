#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "FLTGoogleSignInPlugin.h"

FOUNDATION_EXPORT double google_sign_inVersionNumber;
FOUNDATION_EXPORT const unsigned char google_sign_inVersionString[];

