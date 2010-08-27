//
//  Foo.m
//  RandomApp
//
//  Created by Peter Gebhard on 5/7/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Foo.h"


@implementation Foo

- (IBAction)generate:(id)sender
{
	// Generate a number between 1 and 100 inclusive
	int generated;
	generated = (random() % 100) + 1;
	
	NSLog(@"generated = %d", generated);
	
	// Ask the text field to change what is is displaying
	[textField setIntValue:generated];
}

- (IBAction)seed:(id)sender
{
	// Seed the random number generator with the time
	srandom(time(NULL));
	[textField setStringValue:@"Generator seeded"];
}

- (void)awakeFromNib
{
	NSCalendarDate *now;
	now = [NSCalendarDate calendarDate];
	[textField setObjectValue:now];
}

@end
