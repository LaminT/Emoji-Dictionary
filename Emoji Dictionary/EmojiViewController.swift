//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Lamin Tamba on 09/05/2018.
//  Copyright © 2018 Lamin Tamba. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.daEmoji
        emojiDefinitionLabel.text = emoji.def
        birthLabel.text = "Release Date: \(emoji.releaseDate)"
        categoryLabel.text = "Category: \(emoji.category)"
        
    }

}
