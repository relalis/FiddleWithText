#import <Cocoa/Cocoa.h>
#import <CommonCrypto/CommonDigest.h>

@interface CustomFunctions : NSObject {
	
}

+ (NSString *) returnMD5Hash:(NSString*)concat;
//+ (NSString *) returnRandomCaps:(NSString*)caps;
+ (NSString *) convertToHEX:(NSString*)material;
+ (NSString *) convertToDEC:(NSString*)ascii;
@end