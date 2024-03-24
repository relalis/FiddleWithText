#import <Cocoa/Cocoa.h>
#import <CommonCrypto/CommonDigest.h>

@interface FiddleWindow : NSObject {
    IBOutlet id FunFacts;
    IBOutlet id InputField;
    IBOutlet id OutputField;
}
- (IBAction)AllCaps:(id)sender;
- (IBAction)GetMD5:(id)sender;
- (IBAction)NoCaps:(id)sender;
- (IBAction)Numerical:(id)sender;
//- (IBAction)RandomCaps:(id)sender;
//- (IBAction)RandomOrder:(id)sender;
- (IBAction)ToBinary:(id)sender;
- (IBAction)ToHEX:(id)sender;
@end
