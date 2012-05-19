#import "MapImageOverlay.h"

@implementation MapImageOverlay
@synthesize coordinate;
@synthesize image;


- (id)initWithImage:(UIImage *) _image withLowerRightCoordinate:(CLLocationCoordinate2D)lowerRight withUpperLeftCoordinate:(CLLocationCoordinate2D)upperLeft;
{
    self = [super init];
    if (self != nil) {
		
		image = _image;
		
		MKMapPoint upperLeftPoint = MKMapPointForCoordinate(upperLeft);
		MKMapPoint lowerRightPoint = MKMapPointForCoordinate(lowerRight);
		
		double width = lowerRightPoint.x - upperLeftPoint.x;
		double height = lowerRightPoint.y - upperLeftPoint.y;
		mapRect = MKMapRectMake(upperLeftPoint.x, upperLeftPoint.y, width, height);
		
    }
    return self;
}

- (CLLocationCoordinate2D)coordinate
{
	return MKCoordinateForMapPoint(MKMapPointMake(MKMapRectGetMidX(mapRect), MKMapRectGetMidY(mapRect)));
}

- (MKMapRect)boundingMapRect
{
	return mapRect;
}

@end