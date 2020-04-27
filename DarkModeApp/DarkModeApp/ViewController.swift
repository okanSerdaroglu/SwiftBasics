//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Okan Serdaroğlu on 27.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light // set your own mode for your app
        // you can set your app mode in info.plist
    }
    
    override func viewWillAppear(_ animated: Bool) {
         let userInterfaceStyle = traitCollection.userInterfaceStyle
               if userInterfaceStyle == .dark{ // dark mode
                   buttonChange.tintColor = UIColor.white
               } else {
                   buttonChange.tintColor = UIColor.blue
               }
    }

    @IBOutlet weak var buttonChange: UIButton!
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        // work when mode changed in phone
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark{ // dark mode
            buttonChange.tintColor = UIColor.white
        } else {
            buttonChange.tintColor = UIColor.blue
        }
    }
    
}

