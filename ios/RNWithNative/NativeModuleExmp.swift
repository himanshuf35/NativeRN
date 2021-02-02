//
//  NativeModuleExmp.swift
//  RNWithNative
//
//  Created by himanshu yadav on 23/04/20.
//  Copyright © 2020 himanshu yadav. All rights reserved.
//

import Foundation

@objc(NativeGoBack)
class NativeGoBack: NSObject{

    @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }

    @objc(getNativeData:)
    func getNativeData(callback: RCTResponseSenderBlock) -> Void {
        callback([nil, "This is the data from native"])
    }

    @objc(goBackToNative)
    func goBackToNative() -> Void {
        // guard let tabBarVC = UIApplication.shared.keyWindow?.rootViewController as? UITabBarController else { return }
        DispatchQueue.main.async {
            if let currentNavController = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController {
            currentNavController.popViewController(animated: true)
            }
        }
    }
}
