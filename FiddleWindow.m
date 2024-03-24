#import "FiddleWindow.h"
#import "Functions.h"

@implementation FiddleWindow

- (IBAction)AllCaps:(id)sender {
    [OutputField setStringValue:[[InputField stringValue] uppercaseString]];
}

- (IBAction)GetMD5:(id)sender {
    [OutputField setStringValue:[CustomFunctions returnMD5Hash:[InputField stringValue]]];
}

- (IBAction)NoCaps:(id)sender {
    [OutputField setStringValue:[[InputField stringValue] lowercaseString]];
}

- (IBAction)Numerical:(id)sender {
    [OutputField setStringValue:[CustomFunctions convertToDEC:[InputField stringValue]]];	
}

//- (IBAction)RandomCaps:(id)sender {
//	[OutputField setStringValue:[CustomFunctions returnRandomCaps:[InputField stringValue]]];
//}

//- (IBAction)RandomOrder:(id)sender {
//    
//}

- (IBAction)ToBinary:(id)sender {
    [OutputField setStringValue:[CustomFunctions returnBinVal:[InputField stringValue]]];
}

- (IBAction)ToHEX:(id)sender {
	[OutputField setStringValue:[CustomFunctions convertToHEX:[InputField stringValue]]];
}

@end
