//
//  ViewController.swift
//  ShareMe
//
//  Created by Mélanie Obringer on 11/06/2019.
//  Copyright © 2019 Mélanie Obringer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ui_shareTextView: UITextView!
    
    @IBOutlet weak var ui_errorText: UILabel!
    
    @IBAction func shareTypedText() {
        let typedText: String = ui_shareTextView.text
        if typedText.count > 0 {
            let shareViewController = UIActivityViewController(activityItems: [typedText], applicationActivities: nil)
            present(shareViewController, animated: true, completion: nil)
            ui_errorText.text = ""
        } else {
            ui_errorText.text = "entrez du texte"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

