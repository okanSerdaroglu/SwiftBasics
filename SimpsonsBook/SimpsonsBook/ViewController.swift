//
//  ViewController.swift
//  SimpsonsBook
//
//  Created by Okan Serdaroğlu on 15.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableViewSimsons: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSimsons.dataSource = self
        tableViewSimsons.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    } // number of rows
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Homer Simpson"
        return cell
    } // your cell


}

