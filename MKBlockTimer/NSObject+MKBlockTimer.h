//
//  NSObject+MKBlockTimer.h
//  MKBlockTimerDemo
//
//  Created by Mugunth on 4/4/13.
//  Copyright (c) 2013 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MKBlockTimer)
-(void) logTimeTakenToRunBlock:(void (^)(void)) block withPrefix:(NSString*) prefixString;
@end
