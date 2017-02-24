//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Cennon on 2017-02-23.
//  Copyright © 2017 Christopher Cennon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var mainView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainView.dataSource = self
        mainView.delegate = self
        
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiVC = segue.destination as! EmojiViewController
        emojiVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func makeEmojiArray() -> [Emoji] {
        var emoji1 = Emoji()
        emoji1.stringEmoji = "👿"
        emoji1.category = "Faces"
        emoji1.definition = "Angry Face With Horns"
        emoji1.releaseYear = "1994"
        
        var emoji2 = Emoji()
        emoji2.stringEmoji = "💪🏽"
        emoji2.category = "Body"
        emoji2.definition = "Flexed Bicep"
        emoji2.releaseYear = "1999"
        
        var emoji3 = Emoji()
        emoji3.stringEmoji = "👘"
        emoji3.category = "Clothing"
        emoji3.definition = "Kimono"
        emoji3.releaseYear = "2007"
        
        var emoji4 = Emoji()
        emoji4.stringEmoji = "🎶"
        emoji4.category = "Symbols"
        emoji4.definition = "Eighth Notes"
        emoji4.releaseYear = "1833"
        
        var emoji5 = Emoji()
        emoji5.stringEmoji = "🇨🇦"
        emoji5.category = "Flags"
        emoji5.definition = "Canadian Flag"
        emoji5.releaseYear = "2013"
        
        var emoji6 = Emoji()
        emoji6.stringEmoji = "🚀"
        emoji6.category = "Travel"
        emoji6.definition = "Rocketship"
        emoji6.releaseYear = "3245"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}

