//
//  NSDictionary+Shoulda.h
//  Freshpod
//
//  Created by Saul Mora on 7/26/10.
//  Copyright (c) 2010 Magical Panda Software LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectiveShoulda.h"

@interface NSDictionary (Shoulda)

- (void) shouldBeEmpty;
- (void) shouldNotBeEmpty;

@end
