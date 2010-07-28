//
//  NSNumber+Shoulda.h
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

#import "ObjectiveShoulda.h"



@interface NSNumber (Shoulda)

- (void) shouldBeEqualToValue:(NSInteger)expected withReason:(NSString *)reason;
- (void) shouldBeEqualToDoubleValue:(double)expected withReason:(NSString *)reason;

@end;

@interface NSNumber(SimpleShoulda)

- (void) shouldBeEqualToValue:(NSInteger)expected;
- (void) shouldBeEqualToDoubleValue:(double)expected;

@end
