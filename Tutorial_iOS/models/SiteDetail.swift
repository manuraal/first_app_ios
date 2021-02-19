//
//  SiteDetail.swift
//  Tutorial_iOS
//
//  Created by Manuel on 19/02/2021.
//

import Foundation

class SiteDetail {
    var id = ""
    var title = ""
    var address = ""
    var transport = ""
    var email = ""
    var geocoordinates = ""
    var description = ""
    var phone = ""
    
    init(id: String, title: String, address: String, transport: String, email: String, geocoordinates: String, description: String, phone: String) {
        self.id = id
        self.title = title
        self.address = address
        self.transport = transport
        self.email = email
        self.geocoordinates = geocoordinates
        self.description = description
        self.phone = phone
    }
}
