//
//  MapVC.swift
//  Tutorial_iOS
//
//  Created by Manuel on 17/02/2021.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 41.3879, longitude: 2.16992)
        let region = MKCoordinateRegion(
          center: initialLocation.coordinate,
          latitudinalMeters: 50000,
          longitudinalMeters: 60000)
        map.setCameraBoundary(
          MKMapView.CameraBoundary(coordinateRegion: region),
          animated: true)
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 200000)
        map.setCameraZoomRange(zoomRange, animated: true)

    }

}
