#import "AppDelegate.h"
@import GoogleMaps;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  // Please see https://developers.google.com/maps/documentation/ios/start#the_google_maps_api_key
  [GMSServices provideAPIKey:@"Insert-Your-Api-Key-Here"];
  return YES;
}

@end
