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
    
    var mySimpsons = [Simpson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSimsons.dataSource = self
        tableViewSimsons.delegate = self
        
        let barney = Simpson(simpsonName: "Barney", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named : "Barney_Gumble")!)

        let fat = Simpson(simpsonName: "Fat", simpsonJob: "Eating", simpsonImage: UIImage(named : "fat")!)

        let homer = Simpson(simpsonName: "Homer", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named : "hommerSimpson")!)

        let lisa = Simpson(simpsonName: "Lisa", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named : "lisa")!)

        let ralph = Simpson(simpsonName: "Ralph", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named : "ralph")!)

        mySimpsons.append(barney)
        mySimpsons.append(fat)
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(ralph)
        
        navigationItem.title = "Simpsons"
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    } // number of rows
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    } // your cell

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        performSegue(withIdentifier: "toDetailVc", sender: mySimpsons[indexPath.row])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if (segue.identifier == "toDetailVc") {
            let selectedSimpson = sender as! Simpson
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.selectedSimpson = selectedSimpson
        }
        
    }
    

}

