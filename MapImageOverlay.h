//
//  MapImageOverlay.h
//  Databáze letišť
//
//  Created by Krystof Celba on 26.04.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface MapImageOverlay : NSObject <MKOverlay> {
	MKMapRect mapRect;
	
}

- (id)initWithImage:(UIImage *) _image withLowerRightCoordinate:(CLLocationCoordinate2D)lowerRight withUpperLeftCoordinate:(CLLocationCoordinate2D)upperLeft;

- (MKMapRect)boundingMapRect;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, strong) UIImage *image;


@end