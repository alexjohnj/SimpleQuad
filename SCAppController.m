/**THIS CODE IS LIFTED NEARLY DIRECTLY FROM SimpleCalc (3.3.2) ***/

//
//  Fusebox.m
//
//  Created by Alex Jackson on 31/01/2010.
//  
//


/*****If you don't know the quadratic equations is:
 x= -b±sqrt(b^2 - 4ac)
 ------------------
 2a
 where a quadratic equations is ax^2 + bx + c = 0; 
 eg:
 x^2 + 6x + 5 = 0
 a = 1 (since x^2 is the same as 1x^2)
 b = 6
 c = 5
 
 so the equation looks like this:
 x = -6±sqrt(6^2 - 4*1*5)
 ----------------------
 2*1
 so x = -1 or x = -5
 For more info see: http://en.wikipedia.org/wiki/Quadratic_equation
 */

#import "SCAppController.h"

static NSString * const autoCalcIsEnabled = @"autoCalcIsEnabled";
static NSString *const lastWindowQuit = @"lastWindowQuit";

@implementation SCAppController

@synthesize preferences, numberFielda, numberFieldb, numberFieldc, positiveXAnswerField, negativeXAnswerField;

#pragma mark - AutoCalc Methods

-(void)controlTextDidChange:(NSNotification *)obj{
    if([[NSUserDefaults standardUserDefaults] boolForKey:autoCalcIsEnabled]){
        [positiveXAnswerField setDoubleValue:[self calculatePositveX]];
        [negativeXAnswerField setDoubleValue:[self calculateNegativeX]];
    }
}
#pragma mark - Calculation Methods

-(double)calculatePositveX{    
    double a, posb, negb, c, answer, answer2 = 0, posbsqred, root;
    a = [numberFielda doubleValue]; 
	posb = [numberFieldb doubleValue];
	negb = posb * -1; //this converts the number to it's negative form, if it posb is negative it becomes positive (since neg * neg = pos)
	c = [numberFieldc doubleValue];
    posbsqred = posb * posb; //equivalent to squaring posb
    root = posbsqred - 4 * a * c;
    answer = negb + sqrt(root);
    answer2 = answer / (2 * a);
    return answer2;
}

-(double)calculateNegativeX{
    double a, posb, negb, c, answer, answer2 = 0, posbsqred, root;	
	a = [numberFielda doubleValue]; 
	posb = [numberFieldb doubleValue];
	negb = posb * -1; //this converts the number to it's negative form, if it posb is negative it becomes positive (since neg * neg = pos)
	c = [numberFieldc doubleValue];
    posbsqred = posb * posb;
    root = posbsqred - 4 * a * c;
    answer = negb - sqrt(root);
    answer2 = answer / (2 * a);
    
    return answer2;
}

- (IBAction)calculateAnswerButton:(id)sender {
    [positiveXAnswerField setDoubleValue:[self calculatePositveX]];
    [negativeXAnswerField setDoubleValue:[self calculateNegativeX]];
}
#pragma mark - Preference Window Loading
-(IBAction)showPreferences:(id)sender{
    if(!self.preferences){
       self.preferences = [[SCPreferencesWindowController alloc] initWithWindowNibName:@"Preferences"];
    }
    [self.preferences showWindow:self];
}
#pragma mark - User Defaults Initialisation
+(void)initialize{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *keys = [NSArray arrayWithObjects:autoCalcIsEnabled, lastWindowQuit, nil];
    NSArray *values = [NSArray arrayWithObjects:[NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], nil];
    NSDictionary *defaults = [NSDictionary dictionaryWithObjects:values forKeys:keys];
    [userDefaults registerDefaults:defaults];
}
#pragma mark - Object Lifecycle
- (void)dealloc {
    [self.preferences release];
    [super dealloc];
}

@end