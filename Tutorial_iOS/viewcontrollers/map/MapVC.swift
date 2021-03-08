//
//  MapVC.swift
//  Tutorial_iOS
//
//  Created by Manuel on 17/02/2021.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 41.3879, longitude: 2.16992)
        let region = MKCoordinateRegion(
          center: initialLocation.coordinate,
          latitudinalMeters: 50000,
          longitudinalMeters: 60000)
        mapView.setCameraBoundary(
          MKMapView.CameraBoundary(coordinateRegion: region),
          animated: true)
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 200000)
        mapView.setCameraZoomRange(zoomRange, animated: true)
    }
    
    func showSites (sites: [Site]){
        for site in sites {
            let annotation = Annotation(title: site.title, coordinate: CLLocationCoordinate2D(latitude: site.geocoordinates.lat, longitude: site.geocoordinates.lng))
            mapView.addAnnotation(annotation)
        }
    }
    
}
