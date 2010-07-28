//
//  NSDate+Shoulda.h
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

#import "ObjectiveShoulda.h"



@interface NSDate (Shoulda)

- (void) shouldBeSameAs:(NSDate *)expected withDescription:(NSString *)reason;

@end

@interface NSDate (SimpleShoulda)

- (void) shouldBeSameAs:(NSDate *)expected;

@end

