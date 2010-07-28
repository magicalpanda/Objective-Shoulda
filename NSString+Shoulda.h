//
//  NSString+Shoulda.h
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

#import "ObjectiveShoulda.h"


@interface NSString (Shoulda)

- (void) shouldBeEqualToString:(NSString *)expected withDescription:(NSString *)reason;
- (void) shouldNotBeEqualToString:(NSString *)notExpected withDescription:(NSString *)reason;
- (void) shouldBeEqualToCString:(char *)expected withDescription:(NSString *)reason;
- (void) shouldNotBeEqualToCString:(char *)notExpected withDescription:(NSString *)reason;

@end

@interface NSString (SimpleShoulda)

- (void) shouldBeEqualToString:(NSString *)expected;
- (void) shouldNotBeEqualToString:(NSString *)notExpected;
- (void) shouldBeEqualToCString:(char *)expected;
- (void) shouldNotBeEqualToCString:(char *)notExpected;

@end
