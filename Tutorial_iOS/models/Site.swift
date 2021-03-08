//
//  Site.swift
//  Tutorial_iOS
//
//  Created by Manuel on 19/02/2021.
//

import Foundation

class Site {
    var id = ""
    var title = ""
    var geocoordinates: Location
    
    init(id: String, title: String, geocoordinates: Location) {
        self.id = id
        self.title = title
        self.geocoordinates = geocoordinates
    }
}
