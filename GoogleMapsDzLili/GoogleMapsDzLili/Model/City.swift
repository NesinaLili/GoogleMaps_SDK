//
//  Cities.swift
//  GoogleMapsDzLili
//
//  Created by Лилия on 6/14/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import Foundation

class City {
    var name: String
    var image: String
    var location: Location
    
    init(name: String, image: String, location: Location) {
        self.name = name
        self.image = image
        self.location = location
    }
}
