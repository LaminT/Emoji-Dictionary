//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Lamin Tamba on 09/05/2018.
//  Copyright © 2018 Lamin Tamba. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []
    
        //["😀", "💩", "🏎", "🕋", "🍎", "🥑","🕌","⚽️"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojis = createEmoji()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let emoji = emojis[indexPath.row]

        cell.textLabel?.text = "\(emoji.daEmoji) - \(emoji.category)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "mySegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiVC = segue.destination as! EmojiViewController
        
        emojiVC.emoji = sender as! Emoji
    }
    
    func createEmoji () -> [Emoji] {
        let grinningFace = Emoji()
        grinningFace.daEmoji = "😀"
        grinningFace.def =  "Grinning Face"
        grinningFace.releaseDate = 2015
        grinningFace.category = "Smileys & People"
        
        let smilingPoop = Emoji()
        smilingPoop.daEmoji = "💩"
        smilingPoop.def = "Smiling Poop"
        smilingPoop.releaseDate = 2015
        smilingPoop.category = "Pile Of Poo"
        
        let racingCar = Emoji()
        racingCar.daEmoji = "🏎"
        racingCar.def =  "Racing Car sponsored by Swift"
        racingCar.releaseDate = 2015
        racingCar.category = "Travel & Places"
        
        let kaaba = Emoji()
        kaaba.daEmoji = "🕋"
        kaaba.def =  "The Kaaba in Makkah"
        kaaba.releaseDate = 2015
        kaaba.category = "Travel & Places"

        let redApple = Emoji()
        redApple.daEmoji = "🍎"
        redApple.def =  "Red Apple"
        redApple.releaseDate = 2015
        redApple.category = "Food & Drink"
        
        let avocado = Emoji()
        avocado.daEmoji = "🥑"
        avocado.def =  "Avocado"
        avocado.releaseDate = 2016
        avocado.category = "Food & Drink"
        
        let mosque = Emoji()
        mosque.daEmoji = "🕌"
        mosque.def =  "Mosque"
        mosque.releaseDate = 2015
        mosque.category = "Travel & Places"
        
        let fodball = Emoji()
        fodball.daEmoji = "⚽️"
        fodball.def =  "Fodball"
        fodball.releaseDate = 2015
        fodball.category = "Activity"
        
        
        return [
            grinningFace,
            smilingPoop,
            racingCar,
            kaaba,
            redApple,
            avocado,
            mosque,
            fodball
        ]
        
        
    }

}
