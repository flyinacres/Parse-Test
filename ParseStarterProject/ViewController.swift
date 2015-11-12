//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product = PFObject(className: "Products")
        product["name"] = "Pizza"
        product["description"] = "Deliciously cheesy"
        product["price"] = 9.99
        product.saveInBackgroundWithBlock { (success, error) -> Void in
            if success {
                print("Saved the pizza!")
            } else {
                print("Failed, no pizza for you")
                print(error)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

