//
//  NativeModuleExmp.m
//  RNWithNative
//
//  Created by himanshu yadav on 23/04/20.
//  Copyright © 2020 himanshu yadav. All rights reserved.
//

#import <React/RCTBridgeModule.h>
@interface RCT_EXTERN_MODULE(NativeGoBack, NSObject)

RCT_EXTERN_METHOD(getNativeData:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(goBackToNative)
@end
