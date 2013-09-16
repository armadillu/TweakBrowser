//
//  WebPolicyDecisionListener.m
//  TweakBrowser
//
//  Created by Oriol Ferrer Mesià on 01/08/13.
//  Copyright (c) 2013 Oriol Ferrer Mesià. All rights reserved.
//

#import "WebPolicyDecisionListener.h"

@implementation WebPolicyDecisionListener

// ...
- (void)webView:(WebView *)webView decidePolicyForNavigationAction:(NSDictionary *)actionInformation
request:(NSURLRequest *)request
frame:(WebFrame *)frame
decisionListener:(id<WebPolicyDecisionListener>)listener
{
	if (WebNavigationTypeLinkClicked == [[actionInformation objectForKey:WebActionNavigationTypeKey] intValue])
	{
		// link was clicked do something with it...
		NSLog(@"decidePolicyForNavigationAction");
	}
	[listener use]; // Say for webview to do it work...
}


-(void)webView:(WebView *)webView decidePolicyForNewWindowAction:(NSDictionary *)actionInformation
request:(NSURLRequest *)request
newFrameName:(NSString *)frameName
decisionListener:(id <WebPolicyDecisionListener>)listener
{
	if (WebNavigationTypeLinkClicked == [[actionInformation objectForKey:WebActionNavigationTypeKey] intValue])
	{
		// link was clicked and webview want to open it in new window do something with it...
		NSLog(@"decidePolicyForNewWindowAction");
	}
	[listener ignore]; // ignore webview default implementation...
}
// ...
@end