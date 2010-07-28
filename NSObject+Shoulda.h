//
//  NSObject+Shoulda.h
//
//  Created by Saul Mora on 3/11/10.
//  Copyright 2010 Magical Panda Software, LLC All rights reserved.
//

#import "ObjectiveShoulda.h"

@interface NSObject (Shoulda)

+ (void) object:(id)actual shouldBe:(id)expected withDescription:(NSString *)reason;
+ (void) object:(id)actual shouldNotBe:(id)expected withDescription:(NSString *)reason;

- (void) shouldBeNilWithDescription:(NSString *)reason;
- (void) shouldNotBeNilWithDescription:(NSString *)reason;

- (void) shouldBeTrueWithDescription:(NSString *)reason;
- (void) shouldBeFalseWithDescription:(NSString *)reason;

- (void) shouldBeEqualTo:(id)expected withDescription:(NSString *)reason;
- (void) shouldNotBeEqualTo:(id)expected withDescription:(NSString *)reason;

- (void) shouldThrowException:(NSException *)expectedException withDescription:(NSString *)reason;
- (void) shouldThrowExceptionNamed:(NSString *)exceptionName withDescription:(NSString *)reason;

- (void) shouldRespondToSelector:(SEL)expectedSelector withDescription:(NSString *)reason;
- (void) shouldNotRespondToSelector:(SEL)selector withDescription:(NSString *)reason;

+ (void) shouldImplementProtocol:(Protocol *)expectedProtocol withDescription:(NSString *)reason;

@end

@interface NSObject (SimpleShoulda)

+ (void) shouldBeNil:(id)actual;
+ (void) shouldNotBeNil:(id)actual;

+ (void) object:(id)actual shouldBe:(id)expected;
+ (void) object:(id)actual shouldNotBe:(id)expected;

- (void) shouldBeNil;
- (void) shouldNotBeNil;

- (void) shouldBeTrue;
- (void) shouldBeFalse;

- (void) shouldBeEqualTo:(id)expected;


- (void) shouldThrowException:(NSException *)expectedException;
- (void) shouldThrowExceptionNamed:(NSString *)exceptionName;

- (void) shouldRespondToSelector:(SEL)expectedSelector;
- (void) shouldNotRespondToSelector:(SEL)selector;

+ (void) shouldImplementProtocol:(Protocol *)expectedProtocol;

@end

