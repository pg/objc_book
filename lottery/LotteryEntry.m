//
//  LotteryEntry.m
//  lottery
//
//  Created by Peter Gebhard on 7/20/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (id)init
{
	return [self initWithEntryDate:[NSCalendarDate calendarDate]];
}

- (id)initWithEntryDate:(NSCalendarDate *)theDate
{
	if(![super init])
		return nil;
	
	NSAssert(theDate != nil, @"Arguments must be non-nil");
	entryDate = theDate;
	firstNumber = random() % 100 + 1;
	secondNumber = random() % 100 + 1;
	return self;
}

- (void)setEntryDate:(NSCalendarDate *)date 
{
	entryDate = date;
}

- (NSCalendarDate *)entryDate
{
	return entryDate;
}

- (int)firstNumber 
{
	return firstNumber;
}

- (int)secondNumber 
{
	return secondNumber;
}

- (NSString *)description
{
	NSString *result; 
	result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",
			  [entryDate descriptionWithCalendarFormat:@"%B %d %Y"],
			  firstNumber, secondNumber]; 
	return result;
}

- (void)dealloc
{
	NSLog(@"deallocing %@", self); 
	[entryDate release]; 
	[super dealloc];
}

@end