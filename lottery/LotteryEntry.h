//
//  LotteryEntry.h
//  lottery
//
//  Created by Peter Gebhard on 7/20/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject { 
	NSCalendarDate *entryDate; 
	int firstNumber; 
	int secondNumber;
}
- (id)initWithEntryDate:(NSCalendarDate *)theDate;
- (void)setEntryDate:(NSCalendarDate *)date;
- (NSCalendarDate *)entryDate; 
- (int)firstNumber; 
- (int)secondNumber;
@end
