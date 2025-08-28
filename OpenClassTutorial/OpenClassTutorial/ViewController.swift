//
//  ViewController.swift
//  OpenClassTutorial
//
//  Created by Lee Daeyong on 8/28/25.
//

import UIKit
import NewFeature

class MyUtils: Utils {
    override class func sayHello() {
        super.sayHello()
        print("하하하")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        MyUtils.sayHello()
    }


}

