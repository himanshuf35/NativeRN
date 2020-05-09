//
//  NativeModuleExmp.swift
//  RNWithNative
//
//  Created by himanshu yadav on 23/04/20.
//  Copyright © 2020 himanshu yadav. All rights reserved.
//

import Foundation

@objc(NativeModuleExmp)
class NativeModuleExmp: NSObject{
    @objc(getNativeData:)
    func getNativeData(callback: RCTResponseSenderBlock) -> Void {
        callback([nil, "This is the data from native"])
    }
}
