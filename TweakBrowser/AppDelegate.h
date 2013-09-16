//
//  AppDelegate.h
//  TweakBrowser
//
//  Created by Oriol Ferrer Mesià on 16/07/13.
//  Copyright (c) 2013 Oriol Ferrer Mesià. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <QuartzCore/QuartzCore.h>
#import "MyWebView.h"
#import <WebKit/WebKit.h>
#import "WebPolicyDecisionListener.h"


@protocol WebKitFullScreenListener<NSObject>
- (void)webkitWillEnterFullScreen;
- (void)webkitDidEnterFullScreen;
- (void)webkitWillExitFullScreen;
- (void)webkitDidExitFullScreen;
@end

@interface AppDelegate : NSObject <NSApplicationDelegate, WebKitFullScreenListener>{

	IBOutlet NSTextField * urlBox;
	IBOutlet MyWebView * webview;
	IBOutlet NSTextField * gammaVal;

}

@property (assign) IBOutlet NSWindow *window;


-(IBAction)loadURL:(id)sender;

-(IBAction)setGamma:(id)sender;

@end
