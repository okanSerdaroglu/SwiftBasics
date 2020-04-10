//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Okan Serdaroğlu on 10.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width // returns mobile device width
        let height = view.frame.size.height // returns mobile device
        
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x:width/2 - width * 0.4 ,y:height/2,width:width*0.8,height:100) // coordinates and width,height
        view.addSubview(myLabel) // label added
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for:UIControl.State.normal)
        myButton.setTitleColor(UIColor.red, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100 , y: height*0.6, width: 200, height: 100)
        
        view.addSubview(myButton) // button added
        
        myButton.addTarget(self, action: #selector(onClick), for: UIControl.Event.touchUpInside) // button click
        
    }
    
    @objc func onClick() {
        myLabel.text = "tapped" // label text changed when button clicked
    }

}

