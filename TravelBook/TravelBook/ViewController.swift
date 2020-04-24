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

class ViewController: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // best location
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }


    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // CLLocation includes latitude and lontitude
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center:location , span:span)
        mapView.setRegion(region, animated: true)
    }
    
    
}

