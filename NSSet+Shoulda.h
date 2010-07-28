//
//  NSSet+Shoulda.h
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

#import "ObjectiveShoulda.h"


@interface NSSet (Shoulda)

- (void) shouldContain:(id)expectedObject withReason:(NSString *)reason;
- (void) shouldBeEmptyWithReason:(NSString *)reason;
- (void) shouldNotBeEmptyWithReason:(NSString *)reason;
- (NSNumber *) itemCount;

@end

@interface NSSet (SimpleShoulda)

- (void) shouldContain:(id)expectedObject;
- (void) shouldBeEmpty;
- (void) shouldNotBeEmpty;

@end