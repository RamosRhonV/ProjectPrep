//
//  ViewController.swift
//  100DaysSwift_Project12_0
//
//  Created by Consultant on 6/9/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UsetTouchID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.set("Paul Hudson", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")
        
        let dict = ["Name":"Paul", "Country": "UK"]
        defaults.set(dict, forKey: "SavedDict")
        
        let array1 = defaults.object(forKey: "SavedArray1") as? [String] ?? [String]()
        let dict1 = defaults.object(forKey: "SavedDict1") as? [String:String] ?? [String:String]()
    }
}

