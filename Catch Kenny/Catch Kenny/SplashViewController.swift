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
    var storedName = ""
    var storedPassword = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (UserDefaults.standard.object(forKey: "userName") != nil){
            storedName = UserDefaults.standard.object(forKey: "userName") as! String
        }
        if (UserDefaults.standard.object(forKey: "password") != nil){
            storedPassword = UserDefaults.standard.object(forKey: "password") as! String
        }
        
        counter = 2
        // this is a simple timer which works @objc timerFunction every second
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunction (){
        counter = counter - 1
        if (counter == 0){
            timer.invalidate() // stop Timer
            if (storedName != ""
                && storedPassword != ""){
                performSegue(withIdentifier: "splashToHomePage", sender: nil)
            } else {
                performSegue(withIdentifier: "splashToSignUp", sender: nil)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "splashToHomePage"){
            let destinationVC = segue.destination as! HomePageViewController
            destinationVC.userName = storedName
        }
    }
    
}
