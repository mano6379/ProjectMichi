//
//  RouteVC.swift
//  ProjectMichi
//
//  Created by Clark on 4/9/18.
//  Copyright © 2018 Kumu. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class RouteVC: UIViewController, CLLocationManagerDelegate{
    
    
    @IBOutlet weak var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.293755, longitude: -157.824705)
    let regionRadius: CLLocationDistance = 1000
    
    let locationManager = CLLocationManager()


   override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    

        self.navigationItem.title = "Route"
        
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
        
        let kingStreet = Restaurant(title: "King", type: "King", coordinate:
            CLLocationCoordinate2D(latitude: 21.293271, longitude: -157.825492 ))
        mapView.addAnnotation(kingStreet)
        
        let haustenStreet = Restaurant(title: "Hausten", type: "Hausten", coordinate:
            CLLocationCoordinate2D(latitude: 21.292611, longitude: -157.823839 ))
        mapView.addAnnotation(haustenStreet)
        
        let kapaakeaStreet = Restaurant(title: "Kapaakea", type: "Kapaakea", coordinate:
            CLLocationCoordinate2D(latitude: 21.292146, longitude: -157.822585 ))
        mapView.addAnnotation(kapaakeaStreet)
    
    
        
      
    }

    func locationManager( _ manager:CLLocationManager, didUpdateLocations locations: [CLLocation]){
    
    let location = locations [0]
    let center = location.coordinate
    let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    let region = MKCoordinateRegion(center: center, span: span)
    
    mapView.setRegion(region, animated: true)
    mapView.showsUserLocation = true
}

    
    func centerMapOnLocation(location:CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

  

}
