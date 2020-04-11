//
//  ViewController.swift
//  AlertProject
//
//  Created by Okan Serdaroğlu on 11.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldPassword2: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldUserName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonSignUp(_ sender: Any) {
        
        let alert = UIAlertController(title: "Error", message: "Username Not Found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // button clicked
            print("button clicked")
        }
        alert.addAction(okButton)
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

