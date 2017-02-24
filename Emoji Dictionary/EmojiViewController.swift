//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Cennon on 2017-02-23.
//  Copyright © 2017 Christopher Cennon. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet var emojiLabel: UILabel!
    
    @IBOutlet var emojiDescription: UILabel!
    @IBOutlet var emojiCategory: UILabel!

    @IBOutlet var emojiReleaseDate: UILabel!
    var emoji = Emoji()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        emojiCategory.text = "Category: \(emoji.category)"
        emojiReleaseDate.text = "Origination Date: \(emoji.releaseYear)"
        emojiDescription.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
