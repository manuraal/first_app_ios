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
        map.mapType = .standard
        map.showsUserLocation = true
    }

}
