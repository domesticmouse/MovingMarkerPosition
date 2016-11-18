#import "AppDelegate.h"
@import GoogleMaps;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
#error Please see https://developers.google.com/maps/documentation/ios/start#the_google_maps_api_key
  [GMSServices provideAPIKey:@"Your API Key Here"];
  return YES;
}

@end
