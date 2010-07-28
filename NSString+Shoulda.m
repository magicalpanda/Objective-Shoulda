//
//  NSString+Shoulda.m
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

#import "NSString+Shoulda.h"



@implementation NSString (Shoulda)

- (void) shouldBeEqualToString:(NSString *)expected withDescription:(NSString *)reason;
{
	[self runTestCase:(TestBlock)^{
		return [self isEqualToString:expected];
	} withDescription:(ExpressionBlock)^{
		return [NSString stringWithFormat:@"'%@' should be equal to '%@'", self, expected];
	} andReason:reason];
}

- (void) shouldNotBeEqualToString:(NSString *)notExpected withDescription:(NSString *)reason;
{
	[self runTestCase:(TestBlock)^{
		return ![self isEqualToString:notExpected];
	} withDescription:(ExpressionBlock)^{
		return [NSString stringWithFormat:@"'%@' should NOT be equal to '%@'", self, notExpected];
	} andReason:reason];
}

- (void) shouldBeEqualToCString:(char *)expected withDescription:(NSString *)reason;
{
	[[NSException exceptionWithName:@"Not Yet implemented" reason:@"Fix Me!" userInfo:nil] raise];
}

- (void) shouldNotBeEqualToCString:(char *)notExpected withDescription:(NSString *)reason;
{
	[[NSException exceptionWithName:@"Not Yet implemented" reason:@"Fix Me!" userInfo:nil] raise];
}

@end


@implementation NSString (SimpleShoulda)

- (void) shouldBeEqualToString:(NSString *)expected
{
	[self shouldBeEqualToString:expected withDescription:@""];
}

- (void) shouldNotBeEqualToString:(NSString *)notExpected
{
	[self shouldNotBeEqualToString:notExpected withDescription:@""];
}

- (void) shouldBeEqualToCString:(char *)expected
{
	[self shouldBeEqualToCString:expected withDescription:@""];
}

- (void) shouldNotBeEqualToCString:(char *)notExpected
{
	[self shouldNotBeEqualToCString:notExpected withDescription:@""];
}

@end
