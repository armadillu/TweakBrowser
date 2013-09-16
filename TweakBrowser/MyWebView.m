#import "MyWebView.h"
#import <QuartzCore/QuartzCore.h>

@implementation MyWebView

- (void)awakeFromNib{
	[self setWantsLayer:YES];
	zoom = 1.0;
}


-(void)setGamma:(float) power{

	gammaF = [CIFilter filterWithName:@"CIGammaAdjust"];
	[gammaF setDefaults];
	[gammaF setValue: [NSNumber numberWithFloat: power] forKey: @"inputPower"];
	[self setContentFilters:[NSArray arrayWithObjects:gammaF, nil]];
}

-(IBAction)zoomIn:(id)sender{
	zoom += 0.05;
	//[self _setZoomMultiplier:zoom isTextOnly:false];
	[self _zoomIn:nil isTextOnly: NO];
	//[[[[[self mainFrame] frameView] documentView] superview] scaleUnitSquareToSize:NSMakeSize(zoom, zoom)];
	NSLog(@"zoom: %f", zoom);
	[self setNeedsDisplay:YES];
}

-(IBAction)zoomOut:(id)sender{
	zoom -= 0.05;
	if(zoom < 1) zoom = 1;
	//[self _setZoomMultiplier:zoom isTextOnly:false];
	[self _zoomOut:nil isTextOnly: NO];
	//[[[[[self mainFrame] frameView] documentView] superview] scaleUnitSquareToSize:NSMakeSize(zoom, zoom)];
	NSLog(@"zoom: %f", zoom);
	[self setNeedsDisplay:YES];
}


@end
