//
//  ObjectiveShoulda.m
//
//  Created by Saul Mora on 7/4/10.
//  Copyright 2010 Magical Panda Software LLC. All rights reserved.
//

#import "ObjectiveShoulda.h"



@implementation NSObject (ObjectiveShoulda)


- (void) failWithException:(NSException *)exception
{
	[exception raise];
}

- (void) runTestCase:(TestBlock)testBlock withDescription:(ExpressionBlock)description andReason:(NSString *)reason
{
	do
	{
		@try
		{
			if (testBlock()) return;
			
			[self failWithException:[NSException ghu_failureInCondition: description() 
																 isTrue: NO 
																 inFile: [NSString stringWithUTF8String:__FILE__] 
																 atLine: __LINE__ 
														withDescription: reason]]; 
		}
		@catch (id anException)
		{
			[self failWithException:[NSException ghu_failureInRaise:[NSString stringWithFormat: @"%@ failed with exception", description()] 
														  exception:anException 
															 inFile:[NSString stringWithUTF8String:__FILE__] 
															 atLine:__LINE__ 
													withDescription:reason]];
		}
		
	} while (0);	
}

- (void) runTestCase:(TestBlock)block withDescription:(ExpressionBlock)description
{
	[self runTestCase:block withDescription:description andReason:@""];
}

@end
