//
//  RNViewController.swift
//  RNWithNative
//
//  Created by himanshu yadav on 23/04/20.
//  Copyright © 2020 himanshu yadav. All rights reserved.
//

import UIKit


class RNViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation!,
            moduleName: "RNWithNative",
            initialProperties: nil,
            launchOptions: nil
        )
        self.view = rootView
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
