//
//  Annotation.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/03/2021.
//

import Foundation
import MapKit

class Annotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(
        title: String?,
        coordinate: CLLocationCoordinate2D
    ) {
        self.title = title
        self.coordinate = coordinate
        
        super.init()
    }

}
