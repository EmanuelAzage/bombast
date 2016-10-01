//
//  ViewController.swift
//  sdhacktest
//
//  Created by Emanuel Azage on 9/30/16.
//  Copyright © 2016 Emanuel Azage. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, UIPopoverPresentationControllerDelegate{
    
    @IBOutlet weak var mapView: MKMapView!
    var locationManager : CLLocationManager = CLLocationManager()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // maybe use hundred meters instead of best?
        locationManager.distanceFilter = 1000.0
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        
        mapView.delegate = self
        mapView.showsUserLocation = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // CLLocation delegate method
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let newLocation : CLLocation = locations.last!
        
        //set the span size
        mapView.setRegion(MKCoordinateRegionMake(newLocation.coordinate, MKCoordinateSpanMake(0.5, 0.5)), animated: true)
        
    }

}

