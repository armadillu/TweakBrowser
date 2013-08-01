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

}


-(IBAction)loadURL:(id)sender;{

	NSURLRequest *requestObj = [NSURLRequest requestWithURL:[NSURL URLWithString:[sender stringValue]]];
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
