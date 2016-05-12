//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream: (NSString *)iceCream;
{
    NSDictionary *iceCreamByName = @{ @"Joe" : @"Peanut Butter and Chocolate",
                                      @"Tim" : @"Natural Vanilla",
                                      @"Sophie" : @"Mexican Chocolate",
                                      @"Deniz" : @"Natural Vanilla",
                                      @"Tom" : @"Mexican Chocolate",
                                      @"Jim" : @"Natural Vanilla",
                                      @"Mark" : @"Cookies 'n Cream"
                                    };
    NSMutableArray *namesForIceCream = [NSMutableArray new];
    
    for (NSArray *key in iceCreamByName)
    {
        if ([iceCreamByName[key] isEqualToString:iceCream])
            {
                [namesForIceCream addObject: key];
            };
    NSLog(@"%@", namesForIceCream);
        
    }
    return namesForIceCream;
}

-(NSDictionary*)countsOfIceCream:(NSDictionary *)iceCreamByName
{
    NSString *iceCream;
    NSMutableDictionary *countsOfIceCream = [NSMutableDictionary dictionary];
    
    NSArray *namesOfPeople = [NSArray new];
    NSNumber *countPeople = nil;
    
        for (NSString *key in iceCreamByName)
        {
            iceCream = iceCreamByName [key];
                if ([countsOfIceCream objectForKey:iceCream] == 0)
                 {
                    namesOfPeople = [self namesForIceCream:iceCream];
                    countPeople = @([namesOfPeople count]);
                    countsOfIceCream[iceCream]=countPeople;
                 }
            }

        NSLog(@"%@", countsOfIceCream);
        return countsOfIceCream;
}

@end
