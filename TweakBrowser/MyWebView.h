/* MyWebView */

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import <WebKit/WebPreferences.h>


@interface MyWebView : WebView{

	@public
	
	CIFilter *gammaF;
	float zoom;
}

-(void)setGamma:(float) power;
-(IBAction)zoomIn:(id)sender;
-(IBAction)zoomOut:(id)sender;

@end
