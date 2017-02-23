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
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        var emojiDescriptionText = ""
        emojiDescriptionText = emoji.applyingTransform(kCFStringTransformToUnicodeName as StringTransform, reverse: false)!
        
        emojiDescription.text = emojiDescriptionText
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
