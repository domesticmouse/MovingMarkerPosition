#import "ViewController.h"
@import GoogleMaps;
@import CoreLocation;

@interface ViewController () <GMSIndoorDisplayDelegate, GMSMapViewDelegate>

@property (strong, nonatomic) IBOutlet GMSMapView *mapView;
@property (nonatomic, strong) GMSMarker *marker;
@property (nonatomic, strong) NSTimer *timer;

-(void) updateMarkerDetails;

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  
  CLLocationCoordinate2D location = CLLocationCoordinate2DMake(40.295210, -124.032841);
  GMSCameraPosition *camera = [GMSCameraPosition cameraWithTarget:location zoom:10.5];
  [self.mapView animateToCameraPosition:camera];
  
  NSURL *styleUrl = [[NSBundle mainBundle] URLForResource:@"style" withExtension:@"json"];
  NSError *error;
  GMSMapStyle *style = [GMSMapStyle styleWithContentsOfFileURL:styleUrl error:&error];
  if (!style) {
    NSLog(@"The style definition could not be loaded: %@", error);
  } else {
    self.mapView.mapStyle = style;
  }
  
  self.marker = [GMSMarker markerWithPosition:location];
  self.marker.map = self.mapView;
  
  // Move marker about
  self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                target:self
                                              selector:@selector(updateMarkerDetails)
                                              userInfo:nil
                                               repeats:YES];
  
  // Seed random
  srand48(arc4random());
}

#pragma mark - ViewController class extension methods

- (UIStatusBarStyle)preferredStatusBarStyle
{
  return UIStatusBarStyleLightContent;
}

-(void) updateMarkerDetails {
  
  // Move the marker in a random direction.
  double latDelta = (drand48() - 0.5) / 20;
  double lngDelta = (drand48() - 0.5) / 20;
  self.marker.position = CLLocationCoordinate2DMake(self.marker.position.latitude + latDelta,
                                                    self.marker.position.longitude + lngDelta);
  
  // Make the map follow the marker.
  CLLocationCoordinate2D newTarget = CLLocationCoordinate2DMake(self.mapView.camera.target.latitude + latDelta/3,
                                                                self.mapView.camera.target.longitude + lngDelta/3);
  GMSCameraPosition *position = [GMSCameraPosition cameraWithTarget:newTarget zoom:10.5];
  [self.mapView animateToCameraPosition:position];
}

@end
