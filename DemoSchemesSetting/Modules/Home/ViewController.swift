//
//  ViewController.swift
//  DemoSchemesSetting
//
//  Created by KinWei on 2020/9/8.
//  Copyright © 2020 KinWei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    print(Environment.apiBaseURL())
    print(Environment.logEnable())
    print(Environment.testInt())
    print(Environment.testDouble())
  }


}

