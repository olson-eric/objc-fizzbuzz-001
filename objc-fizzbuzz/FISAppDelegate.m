//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSMutableString *fizzBuzz = [[NSMutableString alloc] init];
    NSUInteger start = 1;
    NSUInteger limit = 100;
    
    for (NSInteger i = start; i <= limit; i++) {
        NSString *result = @"";
        
        if ((i % 5 == 0) && (i % 3 == 0)) {
            result = @"FizzBuzz, ";
        }
        else if ((i % 5 == 0)) {
            if (i == 100) {
                result = @"Buzz";
            }
            else {
                result = @"Buzz, ";
            }
        }
        else if ((i % 3 == 0)) {
            result = @"Fizz, ";
        }
        else {
            result = [NSString stringWithFormat:@"%lu, ", i];
        }
        [fizzBuzz appendString:result];
    }
    
    NSLog(@"%@", fizzBuzz);
    
    // do not alter
    return YES;  //
    ///////////////
}

@end
