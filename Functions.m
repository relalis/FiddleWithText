#import "Functions.h"

@implementation CustomFunctions

+ (NSString *) returnMD5Hash:(NSString*)concat {
	const char *concat_str = [concat UTF8String];
	unsigned char result[CC_MD5_DIGEST_LENGTH];
	CC_MD5(concat_str, strlen(concat_str), result);
	NSMutableString *hash = [NSMutableString string];
	for (int i = 0; i < 16; i++)
		[hash appendFormat:@"%02X", result[i]];
	return [hash lowercaseString];
	
}

/*+ (NSString *) returnRandomCaps:(NSString*)caps {
	char *caps_str;
	caps_str = [caps UTF8String];
	char *caps_res;
	bool otherside = NO;
	size_t maxsize = strlen(caps_str);
	for(int i = 0; i < maxsize; i++) {
		if(otherside == NO) {
			caps_res[i] = caps_str[(maxsize - 1) - i];
			otherside = YES;
		}
		else {
			caps_res[i] = caps_str[i];
			otherside = NO;
		}
	}
	NSString *result = [NSString stringWithCString: caps_res];
	return [result uppercaseString];
}*/


// convertToHEX
// original algorithm by einsteinx2
// http://stackoverflow.com/questions/3056757/how-to-convert-an-nsstring-to-hex-values
//

+ (NSString *) convertToHEX:(NSString*)material {
	const char *HEXChars = [material UTF8String];
	
	NSString *HEXString = @"";
	
	for(int i = 0; i < strlen(HEXChars) ; i++ )
	{
		if(HEXChars[i+1] != '\0') {
			HEXString = [HEXString stringByAppendingFormat:@"%x ", HEXChars[i]];
		} else {
			HEXString = [HEXString stringByAppendingFormat:@"%x", HEXChars[i]];
		}
	}
	
	return [HEXString uppercaseString];
}

+ (NSString *) convertToDEC:(NSString*)ascii {
	const char *DECConvert = [ascii UTF8String];
	NSString *DECResult = @"";
	
	for(int i = 0; i < strlen(DECConvert); i++) {
		if(DECConvert[i+1] != '\0') {
			DECResult = [DECResult stringByAppendingFormat:@"%d ", (int)DECConvert[i]];
		} else {
			DECResult = [DECResult stringByAppendingFormat:@"%d", (int)DECConvert[i]];
		}
	}
	return DECResult;
}

+ (NSString *) returnBinVal:(NSString*)inputstring {
	const char *BINInput = [inputstring UTF8String];
	NSString *BINString = @"";
	NSMutableString *BINOutput = [[NSMutableString alloc] init];
	for(int i = 0; i < strlen(BINInput); i++) {
		for(int j = (int)BINInput[i]; j > 0; j >>= 1)
		{
			[BINOutput insertString:((j & 1) ? @"1" : @"0") atIndex:0];
		}
		if(BINInput[i+1] != '\0') {
			BINString = [BINString stringByAppendingFormat:@"%@ ", BINOutput];
			[BINOutput setString:@""];
		}
		else {
			BINString = [BINString stringByAppendingFormat:@"%@", BINOutput];
			break;
		}
	}
	
	return BINString;
}

@end
