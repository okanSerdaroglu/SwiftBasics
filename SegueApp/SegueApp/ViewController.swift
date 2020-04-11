//
//  ViewController.swift
//  SegueApp
//
//  Created by Okan Serdaroğlu on 11.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad called")
        
        // Do any additional setup after loading the view.
        // Lifecycle
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear called")
        textFieldName.text = ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear called")
    }

    @IBAction func buttonNext(_ sender: Any) {
        userName = textFieldName.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toSecondVC"){
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

