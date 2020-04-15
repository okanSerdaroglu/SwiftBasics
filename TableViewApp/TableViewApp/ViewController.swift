//
//  ViewController.swift
//  TableViewApp
//
//  Created by Okan Serdaroğlu on 14.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var landmarkImages = [UIImage]()
    var landmarkNames = [String]()
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) { // delete function
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count // number of rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkImages = [UIImage(named: "akdamar")!,UIImage(named: "ayasofya")!,UIImage(named: "pamukkale")!,UIImage(named: "kapadokya")!,UIImage(named: "sumela")!]
        
        landmarkNames = ["akdamar","ayasofya","pamukkale","kapadokya","sumela"]
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "tableViewToDetail", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "tableViewToDetail"){
            let index = sender as! Int
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.selectedLandmarkName = landmarkNames[index]
            destinationVC.selectedLandmarkImage = landmarkImages[index]

        }
    }


}

