//
//  ViewController.swift
//  ResumeApplication
//
//  Created by Macbook on 31.05.2020.
//  Copyright © 2020 Igor Simonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoginSegue" {
            let tabBarController = segue.destination as! UITabBarController
            let destinationVC = tabBarController.viewControllers?.first as! InformationScreenViewController
            destinationVC.welcomName = "Welcome \(user.login)"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loginTextField.returnKeyType = .next
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true)
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        if loginTextField.text == user.login,
            passwordTextField.text == user.password {
            
            loginTextField.text = ""
            passwordTextField.text = ""
        } else {
            showAlert(title: "Wrong login or password", massage: "Use the hint")
        }
        
    }
    
    @IBAction func forgotUsetNameAlert(_ sender: UIButton) {
        showAlert(title: "Hello 😃", massage: "Your login - BestTeacher")
    }
    
    @IBAction func forgotPasswordAlert(_ sender: UIButton) {
        showAlert(title: "And your password", massage: "qwerty")
    }
}




extension ViewController {
    private func showAlert(title: String, massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


