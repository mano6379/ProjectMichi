//
//  KalihiRouteVC.swift
//  ProjectMichi
//
//  Created by Seamus on 5/1/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class KalihiRouteVC: UIViewController, CLLocationManagerDelegate{
    
    @IBOutlet weak var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.330324 , longitude: -157.871882)
    let regionRadius: CLLocationDistance = 1000
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
        self.navigationItem.title = "Route"
       
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
