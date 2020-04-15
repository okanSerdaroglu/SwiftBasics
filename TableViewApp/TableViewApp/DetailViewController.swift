//
//  DetailViewController.swift
//  TableViewApp
//
//  Created by Okan Serdaroğlu on 15.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelLandmark: UILabel!
    @IBOutlet weak var imageViewLandmark: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelLandmark.text = selectedLandmarkName
        imageViewLandmark.image = selectedLandmarkImage
        
    }
    

   

}
