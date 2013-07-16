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

@interface AppDelegate : NSObject <NSApplicationDelegate>{

	IBOutlet NSTextField * urlBox;
	IBOutlet MyWebView * webview;

}

@property (assign) IBOutlet NSWindow *window;


-(IBAction)loadURL:(id)sender;

-(IBAction)setGamma:(id)sender;

@end
