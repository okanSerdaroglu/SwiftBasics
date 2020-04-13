//
//  GameViewController.swift
//  Catch Kenny
//
//  Created by Okan Serdaroğlu on 12.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    @IBOutlet weak var imageView7: UIImageView!
    @IBOutlet weak var imageView8: UIImageView!
    @IBOutlet weak var imageView9: UIImageView!
    @IBOutlet weak var imageView10: UIImageView!
    @IBOutlet weak var imageView11: UIImageView!
    @IBOutlet weak var imageView12: UIImageView!
    @IBOutlet weak var imageView13: UIImageView!
    @IBOutlet weak var imageView14: UIImageView!

    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelTimer: UILabel!
    var ImageViewArray = [UIImageView]()
    
    var timer = Timer()
    var counter = 30
    var lastPosition = 0
    var score = 0
    var theTimeIsOver = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageViewArray = [imageView0,imageView1,imageView2,imageView3,imageView4,imageView5,imageView6,imageView7,imageView8,imageView9,imageView10,imageView11,imageView12,imageView13,imageView14]
        generateNumber().isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    func generateNumber() -> UIImageView {
        lastPosition = Int.random(in: 0..<ImageViewArray.count - 1)
        ImageViewArray[lastPosition].isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(change))
        ImageViewArray[lastPosition].addGestureRecognizer(gestureRecognizer)
        return ImageViewArray[lastPosition]
    }
    
    @objc func timerFunction (){
           labelTimer.text = "Time: \(counter)"
           counter = counter - 1
           ImageViewArray[lastPosition].isHidden = true
           generateNumber().isHidden = false
           if (counter == 0){
               timer.invalidate()
               labelTimer.text = "Time is over"
               theTimeIsOver = true
           }
       }
    
    @objc func change (){
        if (theTimeIsOver == false){
            score = score + 10
            labelScore.text = "Score :\(score)"
        }
    }
       
    
}
