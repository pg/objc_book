//
//  Foo.h
//  RandomApp
//
//  Created by Peter Gebhard on 5/7/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Foo : NSObject {
	IBOutlet NSTextField *textField;
}
- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;
@end
