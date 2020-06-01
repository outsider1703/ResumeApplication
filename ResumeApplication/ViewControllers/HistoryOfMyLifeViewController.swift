//
//  HistoryOfMyLifeViewController.swift
//  ResumeApplication
//
//  Created by Macbook on 01.06.2020.
//  Copyright © 2020 Igor Simonov. All rights reserved.
//

import UIKit

class HistoryOfMyLifeViewController: UIViewController {

    @IBOutlet var stadyTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func stadyButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func wordButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func lifeButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
