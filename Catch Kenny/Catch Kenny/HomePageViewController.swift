//
//  HomePageViewController.swift
//  Catch Kenny
//
//  Created by Okan Serdaroğlu on 12.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    var userName = ""
    
    @IBOutlet weak var textViewScore: UITextView!
    @IBOutlet weak var textViewUserName: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewUserName.text = "Welcome \(userName)"
    }
    
    @IBAction func buttonLogOut(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "userName")
        let storedPassword = UserDefaults.standard.object(forKey: "password")
        
        if (storedName as! String) != nil {
            UserDefaults.standard.removeObject(forKey: "userName")
        }
        
        if (storedPassword as! String) != nil {
            UserDefaults.standard.removeObject(forKey: "password")
        }
        
        
    }
    
}
