//
//  DetailViewController.swift
//  SimpsonsBook
//
//  Created by Okan Serdaroğlu on 17.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelJob: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageViewSimson: UIImageView!
    
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelName.text = selectedSimpson?.name
        labelJob.text = selectedSimpson?.job
        imageViewSimson.image = selectedSimpson?.image
        
    }
    

   

}
