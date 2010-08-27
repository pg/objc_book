//
//  RandomAppAppDelegate.h
//  RandomApp
//
//  Created by Peter Gebhard on 5/7/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RandomAppAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
