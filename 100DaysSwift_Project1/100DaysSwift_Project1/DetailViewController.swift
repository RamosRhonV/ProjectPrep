//
//  DetailViewController.swift
//  100DaysSwift_Project1
//
//  Created by Consultant on 6/6/22.
//

import UIKit

class DetailViewController: UIViewController {

    // UIImageView imageView is now connected to the storyboard
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never

        // unwraps value in optional within selected image
        // if it exists, assigns into the imageView as a new UIImage object
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
