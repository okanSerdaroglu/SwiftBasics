//
//  LoginViewController.swift
//  Catch Kenny
//
//  Created by Okan Serdaroğlu on 12.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldLogin: UITextField!
    var userName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func makeAlert (alertMessage : String, title:String) {

        let alert = UIAlertController(title: title, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default){
            (UIAlertAction) in
            
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }

    

    @IBAction func buttonLogin(_ sender: Any) {
        if (textFieldLogin.text != nil
            && textFieldPassword.text != nil) {
            UserDefaults.standard.set(textFieldLogin.text, forKey: "userName")
            UserDefaults.standard.set(textFieldPassword.text,forKey: "password")
            userName = textFieldLogin.text ?? ""
            performSegue(withIdentifier: "loginToHomePage", sender: nil)
        } else {
            makeAlert(alertMessage: "You must fill all info", title: "Error !")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "loginToHomePage"){
            let destinationVC = segue.destination as! HomePageViewController
            destinationVC.userName = userName
        }
    }
    

}
