//
//  Fusebox.h
//
//  Created by Alex Jackson on 31/01/2010.
// 
//

#import <Cocoa/Cocoa.h>
#import "SCPreferencesWindowController.h"

@interface SCAppController : NSObject{
    
    IBOutlet NSTextField *numberFielda;
    IBOutlet NSTextField *numberFieldc;
    IBOutlet NSTextField *numberFieldb;
    IBOutlet NSTextField *positiveXAnswerField;
    IBOutlet NSTextField *negativeXAnswerField;
    
    SCPreferencesWindowController *preferences;
}
@property (assign) IBOutlet NSTextField *numberFielda;
@property (assign) IBOutlet NSTextField *numberFieldc;
@property (assign) IBOutlet NSTextField *numberFieldb;
@property (assign) IBOutlet NSTextField *positiveXAnswerField;
@property (assign) IBOutlet NSTextField *negativeXAnswerField;

-(IBAction)calculateAnswerButton:(id)sender;
-(IBAction)showPreferences:(id)sender;
-(double)calculatePositveX;
-(double)calculateNegativeX;
@end
