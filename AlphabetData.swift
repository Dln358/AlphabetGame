//
//  AlphabetData.swift
//  AlphabetGame
//
//  Created by Dylan Lindeman on 4/18/23.
//

import UIKit

// Set alphabet letters and images variables
struct AlphabetData {
    let letter: String
    let imageName: String

    var image: UIImage? {
        return UIImage(named: imageName)
    }

    init(letter: String, imageName: String) {
        self.letter = letter
        self.imageName = imageName
    }
}
let alphabetArray = [
    AlphabetData(letter: "Aa", imageName: "Apple"),
    AlphabetData(letter: "Bb", imageName: "Banana"),
    AlphabetData(letter: "Cc", imageName: "Cat"),
    AlphabetData(letter: "Dd", imageName: "Dog"),
    AlphabetData(letter: "Ee", imageName: "Elephant"),
    AlphabetData(letter: "Ff", imageName: "Flower"),
    AlphabetData(letter: "Gg", imageName: "Goat"),
    AlphabetData(letter: "Hh", imageName: "Hand"),
    AlphabetData(letter: "Ii", imageName: "Ice"),
    AlphabetData(letter: "Jj", imageName: "Juice"),
    AlphabetData(letter: "Kk", imageName: "Kangaroo"),
    AlphabetData(letter: "Ll", imageName: "Lemon"),
    AlphabetData(letter: "Mm", imageName: "Monkey"),
    AlphabetData(letter: "Nn", imageName: "Ninja"),
    AlphabetData(letter: "Oo", imageName: "Octopus"),
    AlphabetData(letter: "Pp", imageName: "Panda"),
    AlphabetData(letter: "Qq", imageName: "Queen"),
    AlphabetData(letter: "Rr", imageName: "Robot"),
    AlphabetData(letter: "Ss", imageName: "Star"),
    AlphabetData(letter: "Tt", imageName: "Table"),
    AlphabetData(letter: "Uu", imageName: "Umbrella"),
    AlphabetData(letter: "Vv", imageName: "Violin"),
    AlphabetData(letter: "Ww", imageName: "Whale"),
    AlphabetData(letter: "Xx", imageName: "Xylophone"),
    AlphabetData(letter: "Yy", imageName: "Yarn"),
    AlphabetData(letter: "Zz", imageName: "Zebra")
]
