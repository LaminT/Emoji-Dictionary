//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Lamin Tamba on 09/05/2018.
//  Copyright © 2018 Lamin Tamba. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        
        if emoji == "😀"  {
            emojiDefinitionLabel.text = "Grinning face"
        }
        if emoji == "💩"  {
            emojiDefinitionLabel.text = "Pile Of Poo"
        }
        if emoji == "🏎"  {
            emojiDefinitionLabel.text = "A Racecar sponsored by Swift"
        }
        if emoji == "🕋"  {
            emojiDefinitionLabel.text = "Kaaba"
        }
        if emoji == "🍎"  {
            emojiDefinitionLabel.text = "Red Apple"
        }
        if emoji == "🥑"  {
            emojiDefinitionLabel.text = "Avocado"
        }
        if emoji == "🕌"  {
            emojiDefinitionLabel.text = "Mosque"
        }
        if emoji == "⚽️"  {
            emojiDefinitionLabel.text = "Soccer ball"
        }
        

    }

}
