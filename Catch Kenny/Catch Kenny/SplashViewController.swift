//
//  SplashViewController.swift
//  Catch Kenny
//
//  Created by Okan Serdaroğlu on 12.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    var timer = Timer ()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        counter = 2
        // this is a simple timer which works @objc timerFunction every second
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunction (){
        counter = counter - 1
        if (counter == 0){
            timer.invalidate() // stop Timer
            performSegue(withIdentifier: "splashToSignUp", sender: nil)
        }
        
    }
    
}
