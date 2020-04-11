//
//  ViewController.swift
//  TimerApp
//
//  Created by Okan Serdaroğlu on 11.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 0
    @IBOutlet weak var labelTimer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        labelTimer.text = "Time :\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,selector: #selector(timerFunction) , userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunction (){
        labelTimer.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate() // stop timer
            labelTimer.text = "Time is over"
        }
        
    }


    @IBAction func buttonClicked(_ sender: Any) {
    }
}

