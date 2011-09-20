//
//  SimpleQuadAppDelegate.h
//  SimpleQuad
//
//  Created by Alex Jackson on 31/01/2010.
// 
//

#import <Cocoa/Cocoa.h>

@interface SimpleQuadAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSTextField *positiveXLabel;
    NSTextField *negativeXLabel;
    NSTextFieldCell *positiveXTextFieldCell;
    NSTextFieldCell *negativeXTextFieldCell;
    NSTextField *positiveXTextField;
    NSTextField *negativeXTextField;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *positiveXLabel;
@property (assign) IBOutlet NSTextField *negativeXLabel;
@property (assign) IBOutlet NSTextFieldCell *positiveXTextFieldCell;
@property (assign) IBOutlet NSTextFieldCell *negativeXTextFieldCell;

@end
