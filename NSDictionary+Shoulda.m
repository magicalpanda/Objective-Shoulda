//
//  NSDictionary+Shoulda.m
//  Freshpod
//
//  Created by Saul Mora on 7/26/10.
//  Copyright (c) 2010 Magical Panda Software LLC. All rights reserved.
//

#import "NSDictionary+Shoulda.h"

@implementation NSDictionary (Shoulda)

- (void) shouldBeEmpty
{
    [self runTestCase:(TestBlock)^{
        return [[self allValues] count] == 0;
    } withDescription:(ExpressionBlock)^{
        return [NSString stringWithFormat:@"", self];
    }];
}

- (void) shouldNotBeEmpty
{
    [self runTestCase:(TestBlock)^{
        return [[self allValues] count] > 0;
    } withDescription:(ExpressionBlock)^{
        return [NSString stringWithFormat:@"", self];
    }];    
}

@end
