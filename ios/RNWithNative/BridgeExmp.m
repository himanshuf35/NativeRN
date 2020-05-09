//
//  BridgeExmp.m
//  RNWithNative
//
//  Created by himanshu yadav on 23/04/20.
//  Copyright © 2020 himanshu yadav. All rights reserved.
//

#import "NativeModuleExmp.h"
#import <React/RCTLog.h>
#import <React/RCTConvert.h>

@implementation BridgeExmp

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(addEvent:(NSString *)name details:(NSDictionary *)details)
{
    NSString *location = [RCTConvert NSString:details[@"location"]];
    NSDate *time = [RCTConvert NSDate:details[@"time"]];
    RCTLogInfo(@"The time at location %@ is %@", location, time);
    // TODO: Implement some actually useful functionality
    // callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
}

@end
