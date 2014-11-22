//
//  ViewController.m
//  GoogleMaps
//
//  Created by JESSE SCHNEIDER on 11/18/14.
//  Copyright (c) 2014 JESSE SCHNEIDER. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()

@end

@implementation ViewController {
    GMSMapView *mapView_;
}

-(void)loadView {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate 40.741444, -73.99007 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:40.741444
                                                            longitude:-73.99007
                                                                 zoom:13];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(40.741444, -73.99007);
    marker.title = @"TurnToTech";
    marker.snippet = @"184 5th ave";
    marker.map = mapView_;
}

- (void)viewDidLoad {

    // Do any additional setup after loading the view from its nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
