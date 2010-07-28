//
//  NSObject+Shoulda.m
//
//  Created by Saul Mora on 3/11/10.
//  Copyright 2010 Magical Panda Software, LLC All rights reserved.
//

#import "NSObject+Shoulda.h"

@implementation NSObject (Shoulda)

+ (void) object:(id)actual shouldBe:(id)expected withDescription:(NSString *)reason
{
	GHAssertEquals(actual, expected, reason);
}

+ (void) object:(id)actual shouldNotBe:(id)expected withDescription:(NSString *)reason
{
	GHAssertNotEquals(actual, expected, reason);
}

- (void) shouldNotBeNilWithDescription:(NSString *)reason
{ 
	[self runTestCase:(TestBlock)^{ 
		return self != nil; 
	} 
	  withDescription:(ExpressionBlock)^{
		return [NSString stringWithFormat:@"((%@) should != nil)", [self description]];
	  } andReason:reason];
}

- (void) shouldBeNilWithDescription:(NSString *)reason
{
	[self runTestCase:(TestBlock)^ { 
		return self == nil; 
	}
	  withDescription:(ExpressionBlock)^{
		  return [NSString stringWithFormat:@"(%@) should == nil", [self description]];
	  } andReason:reason];
}

- (void) shouldBeTrueWithDescription:(NSString *)reason;
{
	[self runTestCase:(TestBlock)^ {
		return [[NSNumber numberWithBool:YES] isEqualToNumber:(NSNumber *)self]; 
	}
	  withDescription:(ExpressionBlock)^{
		  return [NSString stringWithFormat:@"%@ should == YES", [self description]];
	  } andReason:reason];
}

- (void) shouldBeFalseWithDescription:(NSString *)reason;
{
	[self runTestCase:(TestBlock)^ {
		return [[NSNumber numberWithBool:NO] isEqualToNumber:(NSNumber *)self];
	}
	  withDescription:(ExpressionBlock)^{
		  return [NSString stringWithFormat:@"%@ should == NO", [self description]];
	  } andReason:reason];
}

- (void) shouldBeEqualTo:(id)expected withDescription:(NSString *)reason;
{
	[self runTestCase:(TestBlock)^ {
		return [expected isEqual:self];
	} withDescription:(ExpressionBlock)^{
		return [NSString stringWithFormat:@"%@ should == %@", [self description], [expected description]];
	} andReason:reason];
}


- (void) shouldNotBeEqualTo:(id)expected withDescription:(NSString *)reason;
{
	[[NSException exceptionWithName:@"Not Yet implemented" reason:@"Fix Me!" userInfo:nil] raise];
}

- (void) shouldThrowException:(NSException *)expectedException withDescription:(NSString *)reason;
{
	[[NSException exceptionWithName:@"Not Yet implemented" reason:@"Fix Me!" userInfo:nil] raise];	
}

- (void) shouldThrowExceptionNamed:(NSString *)exceptionName withDescription:(NSString *)reason;
{
	[[NSException exceptionWithName:@"Not Yet implemented" reason:@"Fix Me!" userInfo:nil] raise];
}

- (void) shouldRespondToSelector:(SEL)expectedSelector withDescription:(NSString *)reason
{
    [self runTestCase:(TestBlock)^{
        return [self respondsToSelector:expectedSelector];
    } withDescription:(ExpressionBlock)^{
        return [NSString stringWithFormat:@"'%@' should respond to selector '%@'", self, NSStringFromSelector(expectedSelector)];
    } andReason:reason];
}

- (void) shouldNotRespondToSelector:(SEL)selector withDescription:(NSString *)reason
{
    [self runTestCase:(TestBlock)^{
        return ![self respondsToSelector:selector];
    } withDescription:(ExpressionBlock)^{
        return [NSString stringWithFormat:@"'%@' should NOT respond to selector '%@'", self, NSStringFromSelector(selector)];
    } andReason:reason];    
}

+ (void) shouldImplementProtocol:(Protocol *)expectedProtocol withDescription:(NSString *)reason
{
    [self runTestCase:(TestBlock)^{
        return [self conformsToProtocol:expectedProtocol];
    } withDescription:(ExpressionBlock)^{
        return [NSString stringWithFormat:@"'%@' should implement protocol '%@'", NSStringFromClass(self), NSStringFromProtocol(expectedProtocol)];
    } andReason:reason];
}

@end


@implementation NSObject (SimpleShoulda)

+ (void) shouldBeNil:(id)actual
{
    [NSObject object:actual shouldBe:nil];
}

+ (void) shouldNotBeNil:(id)actual
{
    [NSObject object:actual shouldNotBe:nil];
}

+ (void) object:(id)actual shouldBe:(id)expected
{
	[NSObject object:actual shouldBe:expected withDescription:@""];
}

+ (void) object:(id)actual shouldNotBe:(id)expected;
{
	[NSObject object:actual shouldNotBe:expected withDescription:@""];
}

- (void) shouldBeNil
{
	[self shouldBeNilWithDescription:@""];
}

- (void) shouldNotBeNil
{
	[self shouldNotBeNilWithDescription:@""];
}

- (void) shouldBeTrue
{
	[self shouldBeTrueWithDescription:@""];
}

- (void) shouldBeFalse
{
	[self shouldBeFalseWithDescription:@""];
}

- (void) shouldBeEqualTo:(id)expected
{
	[self shouldBeEqualTo:expected withDescription:@""];
}

- (void) shouldThrowException:(NSException *)expectedException
{
	[self shouldThrowException:expectedException withDescription:@""];
}

- (void) shouldThrowExceptionNamed:(NSString *)exceptionName
{
	[self shouldThrowExceptionNamed:exceptionName withDescription:@""];
}

- (void) shouldRespondToSelector:(SEL)expectedSelector
{
    [self shouldRespondToSelector:expectedSelector withDescription:@""];
}

- (void) shouldNotRespondToSelector:(SEL)selector
{
    [self shouldNotRespondToSelector:selector withDescription:@""];
}

+ (void) shouldImplementProtocol:(Protocol *)expectedProtocol
{
    [self shouldImplementProtocol:expectedProtocol withDescription:@""];
}
@end