//
//  ViewController.swift
//  GoogleMapsDzLili
//
//  Created by Лилия on 6/14/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController {
    

    @IBOutlet weak var mapView: GMSMapView!
    
    var locationManager = CLLocationManager()
    
    var city: City!
    
    var museumArray: [Museum] = []
    
    var nameMuseum: String = ""
    
    var latitude: Float = 0.0
    var longitude: Float = 0.0

    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCurrentLocation()
//        title = city?.name
        mapView.clipsToBounds = true
        mapView.layer.cornerRadius = 50
        mapView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }
    
    
    
}

extension ViewController: CLLocationManagerDelegate, GMSMapViewDelegate {
    func setCurrentLocation() {
        locationManager.delegate = self
        mapView.delegate = self
        mapView.isMyLocationEnabled = true
        locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let camera = GMSCameraPosition.camera(withLatitude: CLLocationDegrees(latitude), longitude: CLLocationDegrees(longitude), zoom: 12.0)
        self.mapView.animate(to: camera)
        
        for museum in museumArray {
        
        let marker = GMSMarker(position: CLLocationCoordinate2D(latitude: CLLocationDegrees(museum.latitudeMuseum), longitude: CLLocationDegrees(museum.longitudeMuseum)))
        marker.title = museum.nameMuseum
        marker.snippet = museum.descriptionMuseum
        nameMuseum = museum.nameMuseum
        marker.icon = GMSMarker.markerImage(with: .red)
        marker.map = mapView
        }
        self.locationManager.stopUpdatingLocation()
    }
    
    
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        
        for museum in museumArray {
            if marker.title == museum.nameMuseum {
               title = marker.title
            }
        }
        return false
    }
}
