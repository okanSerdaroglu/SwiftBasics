//
//  ListViewController.swift
//  TravelBook
//
//  Created by Okan Serdaroğlu on 24.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableViewPlaces: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add
            , target: self, action: #selector(addButtonClicked))
        
        tableViewPlaces.delegate = self
        tableViewPlaces.dataSource = self
    }
    
    @objc func addButtonClicked(){
        performSegue(withIdentifier: "toMapView", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }

   

}
