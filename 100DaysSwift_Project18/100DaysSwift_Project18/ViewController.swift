//
//  ViewController.swift
//  100DaysSwift_Project18
//
//  Created by Consultant on 6/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        // prints a sentence
        print("I'm inside the viewDidLoad() method!")
        
        // prints integers one through five with a hyphen separating each integer
        print(1, 2, 3, 4, 5, separator: "-")
        
        // prints a string that does not include a line break
        // the terminator parameter removes the \n, which is included in a print call by default
        print("A message with no line break at the end.", terminator: "")
        
        // assert methods are skipped over when the app is run
        // assert methods are only executed during a debugging session
        
        // assert debug methods check if two integers are identical
        assert(1 == 1, "Arithmetic failure!") // assert satisfied, continues the project
        assert(1 == 2, "Arithmetic failure!") // prints the error message
         */
        
        // example loop to practice debugging
        for i in 1...100 {
            print("Got number \(i)!")
        }
    }


}

