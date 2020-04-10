//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Okan Serdaroğlu on 10.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldNumberTwo: UITextField!
    @IBOutlet weak var textFieldNumberOne: UITextField!
    
    @IBOutlet weak var textFieldResult: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPlus(_ sender: Any) {
    
        calculateNumbers(calculationType: 0)
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        calculateNumbers(calculationType: 1)
    }


    @IBAction func buttonDivide(_ sender: Any) {
        calculateNumbers(calculationType: 2)
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        calculateNumbers(calculationType: 3)
    }
    
    func calculateNumbers (calculationType:Int)  {
       
        if let numberOne = Double(textFieldNumberOne.text ?? ""){
            if let numberTwo = Double(textFieldNumberTwo.text ?? ""){
                var result = 0.0
                if (calculationType == 0){
                   result = numberOne + numberTwo
                } else if (calculationType == 1){
                    result = numberOne - numberTwo
                } else if (calculationType == 2){
                    result = numberOne / numberTwo
                } else if (calculationType == 3){
                    result = numberOne * numberTwo
                }
                textFieldResult.text = String (result)
            }
        }
       
    }
    
}

