//
//  NSSet+Shoulda.m
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

#import "NSSet+Shoulda.h"



@implementation NSSet (Shoulda)

- (void) shouldContain:(id)expectedObject withReason:(NSString *)reason
{
	[self runTestCase:(TestBlock)^{
		return expectedObject != nil && [self containsObject:expectedObject];
	} withDescription:(ExpressionBlock)^{
		return [NSString stringWithFormat:@"%@ should contain %@", self, expectedObject];
	} andReason:reason];
}

- (void) shouldBeEmptyWithReason:(NSString *)reason;
{
	[self runTestCase:(TestBlock)^{
		return [self count] == 0;
	} withDescription:(ExpressionBlock)^{
		return [NSString stringWithFormat:@"%@ should be empty", self];
	} andReason:reason];	
}

- (void) shouldNotBeEmptyWithReason:(NSString *)reason;
{
	[self runTestCase:(TestBlock)^{
		return [self count] > 0;
	} withDescription:(ExpressionBlock)^{
		return [NSString stringWithFormat:@"%@ should NOT be empty", self];
	} andReason:reason];
}

- (NSNumber *) itemCount
{
	return [NSNumber numberWithInt:[self count]];
}

@end

@implementation NSSet (SimpleShoulda)

- (void) shouldContain:(id)expectedObject;
{
    [self shouldContain:expectedObject withReason:@""];
}

- (void) shouldBeEmpty;
{
	[self shouldBeEmptyWithReason:@""];
}

- (void) shouldNotBeEmpty;
{
	[self shouldNotBeEmptyWithReason:@""];
}

@end
