//
//  ViewController.swift
//  FirstApp
//
//  Created by büşra akdağ on 9.04.2020.
//  Copyright © 2020 Okan Serdaroglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
    
        imageView.image = UIImage(named: "duman2")
        
    }
    
}

