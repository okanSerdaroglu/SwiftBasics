//
//  ViewController.swift
//  Catch Kenny
//
//  Created by Okan Serdaroğlu on 12.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldPasswordAgain: UITextField!
    
    var userName = String()
    var password = String ()
    var passwordAgain = String ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func stringIsNullOrEmpty(string : String) -> Bool {
        if (string != ""){
            return false
        }else {
            return true
        }
    }
    
    func makeAlert (alertMessage : String, title:String) {

        let alert = UIAlertController(title: title, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default){
            (UIAlertAction) in
            
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func buttonSignUpClicked(_ sender: Any) {
        
        if (!stringIsNullOrEmpty(string: textFieldUserName.text!)
            && !stringIsNullOrEmpty(string: textFieldPassword.text!)
            && !stringIsNullOrEmpty(string: textFieldPasswordAgain.text!)) {
            userName = textFieldUserName.text!
            password = textFieldPassword.text!
            passwordAgain = textFieldPasswordAgain.text!
            
            if (password == passwordAgain){
              UserDefaults.standard.set(userName, forKey: "userName")
              UserDefaults.standard.set(password, forKey: "password")
            } else {
              makeAlert(alertMessage: "Password is incorrect", title: "Error !")
            }
        } else {
            makeAlert(alertMessage: "You have to fill all information", title: "Error !")
        }
        
    }
}

