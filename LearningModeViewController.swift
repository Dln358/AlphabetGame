//
//  LearningModeViewController.swift
//  AlphabetGame
//
//  Created by Dylan Lindeman on 4/18/23.
//

import UIKit

class LearningModeViewController: UIViewController {
    
    // Labels
    @IBOutlet weak var letterLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    // Variables
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Call alphabet data
        showAlphabetData(at: currentIndex)
    }
    
    // Show aplhabet data
    func showAlphabetData(at index: Int) {
        let data = alphabetArray[index]
        letterLabel.text = data.letter
        imageView.image = data.image
    }
    
    // Set Left arrow action
    @IBAction func leftArrowButtonTapped(_ sender: UIButton) {
        if currentIndex > 0 {
            currentIndex -= 1
            showAlphabetData(at: currentIndex)
        }
    }
    
    // Set Right arrow action
    @IBAction func rightArrowButtonTapped(_ sender: UIButton) {
        if currentIndex < alphabetArray.count - 1 {
            currentIndex += 1
            showAlphabetData(at: currentIndex)
        }
    }
}

