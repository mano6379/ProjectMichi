//
//  RouteVC.swift
//  ProjectMichi
//
//  Created by Clark on 4/10/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class RouteVC: UIViewController {
    
    
    @IBOutlet weak var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.293755, longitude: -157.824705)
    let regionRadius: CLLocationDistance = 1000
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        
        let beretaniaStreet = Restaurant(title: "Beretania", type: "Beretania", coordinate:
            CLLocationCoordinate2D(latitude: 21.294427, longitude: -157.823994 ))
        mapView.addAnnotation(beretaniaStreet)
        
        let isenbergStreet = Restaurant(title: "Isenberg", type: "Isenberg", coordinate:
            CLLocationCoordinate2D(latitude: 21.293535, longitude: -157.825412 ))
        mapView.addAnnotation(isenbergStreet)
        
        let youngStreet = Restaurant(title: "Young", type: "Young", coordinate:
            CLLocationCoordinate2D(latitude: 21.294097, longitude: -157.825198 ))
        mapView.addAnnotation(youngStreet)
        
        
        
        // Do any additional setup after loading the view.
    }

    
    func centerMapOnLocation(location:CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
