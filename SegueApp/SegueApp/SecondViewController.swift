//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Okan Serdaroğlu on 11.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSecondViewController: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelName.text = myName
        
    }
    
}
