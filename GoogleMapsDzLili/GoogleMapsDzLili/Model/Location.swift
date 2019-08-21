//
//  Location.swift
//  GoogleMapsDzLili
//
//  Created by Лилия on 6/15/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import Foundation

class Location {
    var latitude: Float
    var longitude: Float
    var museum: [Museum]
    
    init(latitude: Float, longitude: Float, museum: [Museum]) {
        self.latitude = latitude
        self.longitude = longitude
        self.museum = museum
    }
}

