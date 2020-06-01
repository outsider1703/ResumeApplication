//
//  InformationScreenViewController.swift
//  ResumeApplication
//
//  Created by Macbook on 31.05.2020.
//  Copyright © 2020 Igor Simonov. All rights reserved.
//

import UIKit

class InformationScreenViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomName
        
    }
    
    
    @IBAction func logUotButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
