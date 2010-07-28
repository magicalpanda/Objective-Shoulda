//
//  ObjectiveShoulda.h
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

//#ifndef TARGET_IPHONE_OS
//#import <Cocoa/Cocoa.h>
//#endif
#import "GHUnit.h"

typedef BOOL (^TestBlock)();
typedef NSString* (^ExpressionBlock)();

@interface NSObject (ShouldaTestBlock)

- (void) failWithException:(NSException *)exception;
- (void) runTestCase:(TestBlock)testBlock withDescription:(ExpressionBlock)description andReason:(NSString *)reason;
- (void) runTestCase:(TestBlock)block withDescription:(ExpressionBlock)description;

@end

#import "NSSet+Shoulda.h"
#import "NSArray+Shoulda.h"
#import "NSDate+Shoulda.h"
#import "NSDictionary+Shoulda.h"
#import "NSManagedObject+Shoulda.h"
#import "NSNumber+Shoulda.h"
#import "NSObject+Shoulda.h"
#import "NSString+Shoulda.h"
