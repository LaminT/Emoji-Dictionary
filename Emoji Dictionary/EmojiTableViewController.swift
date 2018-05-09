//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Lamin Tamba on 09/05/2018.
//  Copyright © 2018 Lamin Tamba. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emoji = ["😀", "💩", "🏎", "🕋", "🍎", "🥑"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = emoji[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "mySegue", sender: nil)
        
    }

}
