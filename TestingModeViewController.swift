//
//  TestingModeViewController.swift
//  AlphabetGame
//
//  Created by Dylan Lindeman on 4/18/23.
//

import UIKit
import AVFoundation

class TestingModeViewController: UIViewController {
    
    // Labels
    @IBOutlet weak var letterLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    // Variables
    var currentLetter: String = ""
    var currentScore = 0
    var correctSoundEffect: AVAudioPlayer?
    var wrongSoundEffect: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up sound effects
        do {
            correctSoundEffect = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "Bell", ofType: "mp3") ?? "Bell.mp3"))
            wrongSoundEffect = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "Buzzer", ofType: "mp3") ?? "Buzzer.mp3"))
        } catch {
            print("Error setting up sound effects: \(error)")
        }
        
        // Add tap gesture recognizers to image views
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(imageView1Tapped(_:)))
        imageView1.isUserInteractionEnabled = true
        imageView1.addGestureRecognizer(tapGesture1)
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(imageView2Tapped(_:)))
        imageView2.isUserInteractionEnabled = true
        imageView2.addGestureRecognizer(tapGesture2)
        
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(imageView3Tapped(_:)))
        imageView3.isUserInteractionEnabled = true
        imageView3.addGestureRecognizer(tapGesture3)
        
        askQuestion()
    }
    
    // Set random letter and image for questions
    func askQuestion() {
        let randomIndex = Int.random(in: 0..<alphabetArray.count)
        let data = alphabetArray[randomIndex]
        currentLetter = data.letter
        letterLabel.text = currentLetter
        
        var images = [data.image]
        while images.count < 3 {
            let randomImageIndex = Int.random(in: 0..<alphabetArray.count)
            if alphabetArray[randomImageIndex].letter != currentLetter {
                images.append(alphabetArray[randomImageIndex].image)
            }
        }
        images.shuffle()
        imageView1.image = images[0]
        imageView2.image = images[1]
        imageView3.image = images[2]
    }
    
    // Determine if answer is correct or not and play sound
    @objc func imageView1Tapped(_ sender: UITapGestureRecognizer) {
        if imageView1.image == alphabetArray.first(where: { $0.letter == currentLetter })?.image {
            currentScore += 1
            correctSoundEffect?.play()
        } else {
            wrongSoundEffect?.play()
        }
        scoreLabel.text = "Score: \(currentScore)"
        askQuestion()
    }
    
    @objc func imageView2Tapped(_ sender: UITapGestureRecognizer) {
        if imageView2.image == alphabetArray.first(where: { $0.letter == currentLetter })?.image {
            currentScore += 1
            correctSoundEffect?.play()
        } else {
            wrongSoundEffect?.play()
        }
        scoreLabel.text = "Score: \(currentScore)"
        askQuestion()
    }
    
    @objc func imageView3Tapped(_ sender: UITapGestureRecognizer) {
        if imageView3.image == alphabetArray.first(where: { $0.letter == currentLetter })?.image {
            currentScore += 1
            correctSoundEffect?.play()
        } else {
            wrongSoundEffect?.play()
        }
        scoreLabel.text = "Score: \(currentScore)"
        askQuestion()
    }
}
