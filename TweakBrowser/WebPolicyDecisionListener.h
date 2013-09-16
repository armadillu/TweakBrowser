//
//  WebPolicyDecisionListener.h
//  TweakBrowser
//
//  Created by Oriol Ferrer Mesià on 01/08/13.
//  Copyright (c) 2013 Oriol Ferrer Mesià. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import <WebKit/WebPreferences.h>

@interface WebPolicyDecisionListener: NSObject {
}


// Implement PolicyDelegate
-(void)webView:(WebView *)webView decidePolicyForNavigationAction:(NSDictionary *)actionInformation
	   request:(NSURLRequest *)request
		 frame:(WebFrame *)frame
decisionListener:(id<WebPolicyDecisionListener>)listener;

-(void)webView:(WebView *)webView decidePolicyForNewWindowAction:(NSDictionary *)actionInformation
	   request:(NSURLRequest *)request
  newFrameName:(NSString *)frameName
decisionListener:(id <WebPolicyDecisionListener>)listener;

@end
