//
//  ViewController.swift
//  AlphabetGame
//
//  Created by Dylan Lindeman on 4/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet weak var imageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set images in image view
        let image = UIImage(named: "ABC")
        imageView.image = image
        
        let image1 = UIImage(named: "Cartoon")
        imageView1.image = image1
        
        // Set scale to aspect ratio
        imageView.contentMode = .scaleAspectFit
        imageView1.contentMode = .scaleAspectFit
    }
    
    // Unwind from learning mode
    @IBAction func unwindFromLearningMode(segue: UIStoryboardSegue) {
        // No code needed
    }
    
    // Unwind from testing mode
    @IBAction func unwindFromTestingMode(segue: UIStoryboardSegue){
        // No code needed
    }


}

