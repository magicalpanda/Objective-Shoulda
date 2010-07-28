//
//  NSNumber+Shoulda.m
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

#import "NSNumber+Shoulda.h"




@implementation NSNumber (Shoulda)

- (void) shouldBeEqualToValue:(NSInteger)expected withReason:(NSString *)reason
{
	[self runTestCase:(TestBlock)^{
		return [self integerValue] == expected;
	} withDescription:(ExpressionBlock)^{
		return [NSString stringWithFormat:@"%@ should == %d", self, expected];
	} andReason:reason];
}

- (void) shouldBeEqualToDoubleValue:(double)expected withReason:(NSString *)reason
{
	[self runTestCase:(TestBlock)^{
		return [self doubleValue] == expected;
	} withDescription:(ExpressionBlock)^{
		return [NSString stringWithFormat:@"%@ should == %f", self, expected];
	} andReason:reason];    
}

@end

@implementation NSNumber (SimpleShoulda)

- (void) shouldBeEqualToValue:(NSInteger)expected
{
	[self shouldBeEqualToValue:expected withReason:@""];
}

- (void) shouldBeEqualToDoubleValue:(double)expected
{
    [self shouldBeEqualToDoubleValue:expected withReason:@""];
}

@end