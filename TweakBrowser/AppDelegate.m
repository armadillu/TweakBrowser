//
//  AppDelegate.m
//  TweakBrowser
//
//  Created by Oriol Ferrer Mesià on 16/07/13.
//  Copyright (c) 2013 Oriol Ferrer Mesià. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{

	[webview setDownloadDelegate:self];
	[webview setUIDelegate:self];
	[webview setResourceLoadDelegate:self];
	[webview setFrameLoadDelegate:self];

}

- (void)webView:(WebView *)sender didDrawFrame:(WebFrame *)frame;{
	NSLog(@"didDrawFrame");
}

- (void)webkitWillEnterFullScreen;{
	NSLog(@"webkitWillEnterFullScreen");
}

- (void)webView:(WebView *)sender enterFullScreenForElement:(DOMElement *)element;{
	NSLog(@"enterFullScreenForElement");
}


- (void)playerWillEnterFullscreen:(NSNotification *)notification{
	NSLog(@"playerWillEnterFullscreen");
}


- (void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame{
	NSLog(@"didStartProvisionalLoadForFrame");
	[urlBox setStringValue:[[[[[sender mainFrame] dataSource] request] URL] absoluteString]];
}


-(IBAction)loadURL:(id)sender;{

	NSString *url = [sender stringValue];
	if( ![url hasPrefix:@"http://"]){
		url = [@"http://" stringByAppendingString:url];
		[urlBox setStringValue:url];
	}
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
	NSLog(@"req: %@", requestObj);
    [[webview mainFrame] loadRequest:requestObj];
}

-(IBAction)setGamma:(id)sender;{
	float power = [sender floatValue];
	[gammaVal setFloatValue:power];
	//NSLog(@"setalpha: %f", power);
	[webview setGamma: power];
}

@end
