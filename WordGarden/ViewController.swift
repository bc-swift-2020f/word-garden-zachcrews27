//
//  ViewController.swift
//  WordGarden
//
//  Created by Zach Crews on 9/13/20.
//  Copyright © 2020 Zachary Crews. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsInGameLabel: UILabel!
    @IBOutlet weak var wordsBeingRevealedLabel: UILabel!
    @IBOutlet weak var guessedLetterTextField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessedLetterTextField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    
    func updateUIAfterGuess() {
        guessedLetterTextField.resignFirstResponder()
        guessedLetterTextField.text! = ""
        guessLetterButton.isEnabled = false
    }
    
    func returnLastCharacter(text: String) -> String {
        guard let lastCharacter = text.last else {
            return ""
        }
        return String(lastCharacter)
    }

    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }

    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAfterGuess()
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        let text = guessedLetterTextField.text!
        guessedLetterTextField.text = returnLastCharacter(text: text)
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
}

