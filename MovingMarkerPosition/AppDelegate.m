#import "AppDelegate.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  // Please see https://developers.google.com/maps/documentation/ios/start#the_google_maps_api_key
  [GMSServices provideAPIKey:@"InsertYourApiKeyHere"];
  return YES;
}

@end
