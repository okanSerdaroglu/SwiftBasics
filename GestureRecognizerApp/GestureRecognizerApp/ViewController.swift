//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Okan Serdaroğlu on 11.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isQuaresma = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(change)) // click for imageView
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func change () {
        if (isQuaresma){
            imageView.image = UIImage(named: "talisca")
            myLabel.text = "Talisca"
            isQuaresma = false
        } else {
            imageView.image = UIImage(named: "quaresma")
            myLabel.text = "Quaresma"
            isQuaresma = true
        }
    }


}

