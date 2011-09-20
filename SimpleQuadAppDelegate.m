//
//  SimpleQuadAppDelegate.m
//  SimpleQuad
//
//  Created by Alex Jackson on 31/01/2010.
//  
//

#import "SimpleQuadAppDelegate.h"

static NSString *const lastWindowQuit = @"lastWindowQuit";

@implementation SimpleQuadAppDelegate

@synthesize window;
@synthesize positiveXLabel;
@synthesize negativeXLabel;
@synthesize positiveXTextFieldCell;
@synthesize negativeXTextFieldCell;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	if(floor(NSAppKitVersionNumber) <= NSAppKitVersionNumber10_6){
        [positiveXLabel setStringValue:@"+x="];
        [negativeXLabel setStringValue:@"-x="];
        [positiveXTextFieldCell setPlaceholderString:@"+x"];
        [negativeXTextFieldCell setPlaceholderString:@"-x"];
    }
}

-(BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender{
    return [[NSUserDefaults standardUserDefaults] boolForKey:lastWindowQuit];
}
@end
