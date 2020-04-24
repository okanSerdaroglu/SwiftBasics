//
//  ViewController.swift
//  TravelBook
//
//  Created by Okan Serdaroğlu on 24.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import CoreData

class ViewController: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate {

    @IBOutlet weak var textFieldComment: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var choosenLatitude = Double()
    var choosenLongtitude = Double()
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newPlace = NSEntityDescription.insertNewObject(forEntityName: "Places", into: context)
        
        newPlace.setValue(textFieldName.text, forKey: "title")
        newPlace.setValue(textFieldComment.text, forKey: "subtitle")
        newPlace.setValue(choosenLongtitude, forKey: "longtitude")
        newPlace.setValue(choosenLatitude, forKey: "latitude")
        newPlace.setValue(UUID(), forKey: "id")
        
        do {
            try context.save()
            print("success")
        } catch {
            print("error")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // best location
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        let gestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(chooseLocation(gestureRecognizer:)))
        gestureRecognizer.minimumPressDuration = 3
        mapView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func chooseLocation(gestureRecognizer:UILongPressGestureRecognizer){
        
        if gestureRecognizer.state == .began {
            let touchPoint = gestureRecognizer.location(in: self.mapView)
            let touchCoordinates = self.mapView.convert(touchPoint, toCoordinateFrom: self.mapView)
            choosenLatitude = touchCoordinates.latitude
            choosenLongtitude = touchCoordinates.longitude
            let annotation = MKPointAnnotation()
            annotation.coordinate = touchCoordinates
            annotation.title = textFieldName.text
            annotation.subtitle = textFieldComment.text
            self.mapView.addAnnotation(annotation)
            
        }
        
    }


    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // CLLocation includes latitude and lontitude
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center:location , span:span)
        mapView.setRegion(region, animated: true)
    }
    
    
}

