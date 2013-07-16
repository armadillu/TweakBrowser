/* MyWebView */

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import <WebKit/WebPreferences.h>


@interface MyWebView : WebView{

	@public
	
	CIFilter *gammaF;
}

-(void)setGamma:(float) power;

@end
