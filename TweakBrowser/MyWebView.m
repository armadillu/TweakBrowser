#import "MyWebView.h"
#import <QuartzCore/QuartzCore.h>

@implementation MyWebView

- (void)awakeFromNib{

	[self setWantsLayer:YES];
}

-(void)setGamma:(float) power{

	gammaF = [CIFilter filterWithName:@"CIGammaAdjust"];
	[gammaF setDefaults];
	[gammaF setValue: [NSNumber numberWithFloat: power] forKey: @"inputPower"];
	[self setContentFilters:[NSArray arrayWithObjects:gammaF, nil]];

}
@end
