//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISBlackjackPlayer.h"
#import "FISCardDeck.h"
#import "FISCard.h"


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   // create an instance of FISBlackjackPlayer with your own name
    FISBlackjackPlayer *LC = [[FISBlackjackPlayer alloc] initWithName:@"Ticia"];
    
    //NSLog() its description string.
    
    NSLog(@"%@", LC.description);

    //You can initialize an instance of FISCardDeck
    
    FISBlackjackPlayer  *player = [[FISBlackjackPlayer alloc]init];
    FISCardDeck *drawCardForPlayer = [[FISCardDeck alloc]init];
    //use its drawNextCard method to pass your player a card using its acceptCard: method.
    
    [player acceptCard:drawCardForPlayer.drawNextCard];
    return YES;
}

@end
