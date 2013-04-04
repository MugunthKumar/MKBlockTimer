//
//  NSObject+MKBlockTimer.m
//  MKBlockTimerDemo
//
//  Created by Mugunth on 4/4/13.
//  Copyright (c) 2013 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

#include <mach/mach.h>
#include <mach/mach_time.h>
#import "NSObject+MKBlockTimer.h"

uint64_t getTickCount(void)
{
  static mach_timebase_info_data_t sTimebaseInfo;
  uint64_t machTime = mach_absolute_time();
  
  // Convert to nanoseconds - if this is the first time we've run, get the timebase.
  if (sTimebaseInfo.denom == 0 )
  {
    (void) mach_timebase_info(&sTimebaseInfo);
  }
  
  // Convert the mach time to milliseconds
  uint64_t millis = ((machTime / 1000000) * sTimebaseInfo.numer) / sTimebaseInfo.denom;
  return millis;
}
@implementation NSObject (MKBlockTimer)

-(void) logTimeTakenToRunBlock:(void (^)(void)) block withPrefix:(NSString*) prefixString {
  
  NSUInteger a = getTickCount();
  block();
  NSUInteger b = getTickCount();
  
  NSLog(@"%@: %d ms", prefixString ? prefixString : @"Time taken", b-a);
}
@end
