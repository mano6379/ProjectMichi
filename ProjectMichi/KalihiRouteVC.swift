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
        
        let BerniceStreet = Restaurant(title: "Bernice", type: "Bernice", coordinate:
            CLLocationCoordinate2D(latitude: 21.332985, longitude: -157.869169 ))
        mapView.addAnnotation(BerniceStreet)
        
        let HoughtailingStreet = Restaurant(title: "Houghtailing", type: "Houghtailing", coordinate:
            CLLocationCoordinate2D(latitude: 21.331094, longitude: -157.868163 ))
        mapView.addAnnotation(HoughtailingStreet)
        
        let PeterBuckStreet = Restaurant(title: "Peter Buck", type: "Peter Buck", coordinate:
            CLLocationCoordinate2D(latitude: 21.332108, longitude: -157.869361 ))
        mapView.addAnnotation(PeterBuckStreet)
        
        let KapalamaStreet = Restaurant(title: "Kapalama", type: "Kapalama", coordinate:
            CLLocationCoordinate2D(latitude: 21.332289, longitude: -157.86979))
        mapView.addAnnotation(KapalamaStreet)
        
        let BringhamStreet = Restaurant(title: "Bringham", type: "Bringham", coordinate:
            CLLocationCoordinate2D(latitude: 21.331678, longitude: -157.86979 ))
        mapView.addAnnotation(BringhamStreet)
        
        let WinantStreet = Restaurant(title: "Winant", type: "Winant", coordinate:
            CLLocationCoordinate2D(latitude: 21.328173, longitude: -157.872884 ))
        mapView.addAnnotation(WinantStreet)
        
        let AlokeleStreet = Restaurant(title: "Alokele", type: "Alokele", coordinate:
            CLLocationCoordinate2D(latitude: 21.327854, longitude: -157.873974 ))
        mapView.addAnnotation(AlokeleStreet)
        
        let KaiwiulaStreet = Restaurant(title: "Kaiwiula", type: "Kaiwiula", coordinate:
            CLLocationCoordinate2D(latitude: 21.327365, longitude: -157.874989))
        mapView.addAnnotation(KaiwiulaStreet)
        
        let McNeilStreet = Restaurant(title: "McNeil", type: "McNeil", coordinate:
            CLLocationCoordinate2D(latitude: 21.325909, longitude: -157.874739 ))
        mapView.addAnnotation(McNeilStreet)
        
        let WaiakamiloStreet = Restaurant(title: "Waiakamilo", type: "Waiakamilo", coordinate:
            CLLocationCoordinate2D(latitude: 21.326553, longitude: -157.873639 ))
        mapView.addAnnotation(WaiakamiloStreet)


        
        

       
       
    }
    
    func locationManager( _ manager:CLLocationManager, didUpdateLocations locations: [CLLocation]){
        
        let location = locations [0]
        let center = location.coordinate
        //adjusted latitude Delta and longitudeDelta
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
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
