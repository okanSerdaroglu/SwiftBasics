//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Okan Serdaroğlu on 28.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelUSD: UILabel!
    @IBOutlet weak var labelTRY: UILabel!
    @IBOutlet weak var labelCHF: UILabel!
    @IBOutlet weak var labelCAD: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRatesClicked(_ sender: Any) {
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=88e0b33bfb012b4e1b9876de755c0088")
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { (data, response, error) in
            if error != nil{
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil)
                alert.addAction(okButton)
                self.present(alert,animated: true,completion: nil)
            } else {
                if data != nil {
                    do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String,Any>
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String:Any]{
                                if let cad = rates["CAD"] as? Double{
                                    self.labelCAD.text = "CAD : \(cad)"
                                }
                                
                                if let turkLira = rates["TRY"] as? Double{
                                    self.labelTRY.text = "TRY : \(turkLira)"
                                }

                                if let chf = rates["CHF"] as? Double{
                                    self.labelCHF.text = "CHF : \(chf)"
                                }

                                if let usd = rates["USD"] as? Double{
                                    self.labelUSD.text = "USD : \(usd)"
                                }

                            }
                        }
                    } catch {
                        print("error")
                    }
                }
            }
        }
        
        task.resume() // starts this task
        
    }
    
}

