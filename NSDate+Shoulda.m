//
//  NSDate+Shoulda.m
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

#import "NSDate+Shoulda.h"


@implementation NSDate (Shoulda)

- (void) shouldBeSameAs:(NSDate *)expected withDescription:(NSString *)reason
{
    [self runTestCase:(TestBlock)^{
        return [self isEqualToDate:expected];
    } withDescription:(ExpressionBlock)^{
        return [NSString stringWithFormat:@"'%@' should be the same date as '%@'", self, expected];
    } andReason:reason];
}

@end
@implementation NSDate (SimpleShoulda)

- (void) shouldBeSameAs:(NSDate *)expected
{
    [self shouldBeSameAs:expected withDescription:@""];
}

@end