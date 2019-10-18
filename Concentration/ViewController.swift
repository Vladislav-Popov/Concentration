//
//  ViewController.swift
//  Concentration
//
//  Created by Владислав on 04/10/2019.
//  Copyright © 2019 Владислав. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var flipCountLabel: UILabel!

    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices: Array <String> = ["🎃","👻","🎃","👻"]
    
    @IBAction func TouchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
        flipCard(witchEmoji: emojiChoices[cardNumber], on: sender)
        }
        else {
            print ("chosen​ ​card​ ​was​ ​not​ ​in​ ​cardButtons")
        }
    }

    var flipCount = 0 {
        didSet
        {flipCountLabel.text = "Flips: \(flipCount)"
        }
    }

    
    func flipCard (witchEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

