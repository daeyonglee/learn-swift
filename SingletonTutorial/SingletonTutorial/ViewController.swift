//
//  ViewController.swift
//  SingletonTutorial
//
//  Created by Lee Daeyong on 8/28/25.
//

import UIKit

class Pet {
    static let shared = Pet()
    private init() {}
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myPet = Pet.shared
        let myPet2 = Pet.shared
        
        print(myPet === myPet2)
    }


}

