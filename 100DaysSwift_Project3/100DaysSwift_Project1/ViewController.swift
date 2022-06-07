//
//  ViewController.swift
//  100DaysSwift_Project1
//
//  Created by Consultant on 6/6/22.
//

import UIKit

// changed ViewController from UIViewController class to UITableViewController class
class ViewController: UITableViewController {
    
    // empty array of strings that would hold the filenames
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // assigns value from FileManager.default into constant fm
        // allows the program to work with the filesystem
        let fm = FileManager.default
        
        // assigns the resource path of the app's bundle into constant path
        // allows the program to find all the images used for the app
        let path = Bundle.main.resourcePath!
        
        // assigns the contents of the directory into constant items
        // this is an array of strings that are the filenames
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        // for-loop executes for each item found within the app's bundle
        for item in items {
            
            // executes code if an item's filename has the prefix nssl
            if item.hasPrefix("nssl") {
                // picture to load
                pictures.append(item)
            }
        }
        
        pictures = pictures.sorted()
        
        // prints the names of the pictures
        print(pictures)
    }
    
    // overrides tableView function numberOfRowsInSection parameter with the count of pictures in picture array
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    // overrides tableView function cellForRowAt to return a UITableViewCell with identifier "Picture" that
    // has its textLabel changed to the name of the filename of each pictures array element
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // assigns a recycled cell dequeued from the tableView that has the identifier "Picture"
        // into constant cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        
        // changes text in textLabel within cell to the name of the filename from the pictures arrau
        cell.textLabel?.text = pictures[indexPath.row]
        
        // returns the new UITableViewCell for each cell in the tableView
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // try loading the "Detail" view controller and typecasts it to DetailViewController class
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            // sets selected image to the name of the filename in the pictures array
            vc.selectedImage = pictures[indexPath.row]
            vc.title = "Picture \(indexPath.row + 1) of \(pictures.count)"
            
            // pushes the "Detail" into the navigation controller
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

