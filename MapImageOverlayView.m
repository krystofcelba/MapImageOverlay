//
//  MapOverlayView.m
//  Databáze letišť
//
//  Created by Krystof Celba on 26.04.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MapImageOverlayView.h"

@implementation MapImageOverlayView



-(BOOL) canDrawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale
{
	return  YES;
}

- (void)drawMapRect:(MKMapRect)mapRect
          zoomScale:(MKZoomScale)zoomScale
          inContext:(CGContextRef)context
{
    UIImage *image  = [(MapImageOverlay *)self.overlay image];
	
    MKMapRect theMapRect = [self.overlay boundingMapRect];
	CGRect theRect = [self rectForMapRect:theMapRect];
	
	UIGraphicsPushContext(context);
	[image drawInRect:theRect
		  blendMode:kCGBlendModeNormal 
			  alpha:1.0];
	UIGraphicsPopContext();
}


@end
