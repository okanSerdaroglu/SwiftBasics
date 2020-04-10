//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Okan Serdaroğlu on 10.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldBirthday: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBirthday: UILabel!
    
    @IBOutlet weak var buttonDelete: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "birthday")
        
        // casting - as? vs as!
        
        if let myName = storedName as? String {
            labelName.text = myName
        }// ? means if you can convert
        
        if let myBirthday = storedBirthDay as? String{
            labelBirthday.text = myBirthday
        }
        
        
    }

    @IBAction func buttonDelete(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
        }
        
        if (storedBirthDay as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
        }

    }

    @IBAction func buttonSaveBirthday(_ sender: Any) {
      
        UserDefaults.standard.set(textFieldName.text!, forKey: "name")
        UserDefaults.standard.set(textFieldBirthday, forKey: "birthday")
        
        // save birhday and name userdefaults
        
        labelName.text = "Name \(textFieldName.text!)"
        labelBirthday.text = "Birthday \(textFieldBirthday.text!)"
        
    }
}

