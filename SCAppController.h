//
//  Fusebox.h
//
//  Created by Alex Jackson on 31/01/2010.
// 
//

#import <Cocoa/Cocoa.h>
#import "SCPreferencesWindowController.h"

@interface SCAppController : NSObject

@property (assign) IBOutlet NSTextField *numberFielda;
@property (assign) IBOutlet NSTextField *numberFieldc;
@property (assign) IBOutlet NSTextField *numberFieldb;
@property (assign) IBOutlet NSTextField *positiveXAnswerField;
@property (assign) IBOutlet NSTextField *negativeXAnswerField;

@property (retain) SCPreferencesWindowController *preferences;

-(IBAction)calculateAnswerButton:(id)sender;
-(IBAction)showPreferences:(id)sender;
-(double)calculatePositveX;
-(double)calculateNegativeX;
@end