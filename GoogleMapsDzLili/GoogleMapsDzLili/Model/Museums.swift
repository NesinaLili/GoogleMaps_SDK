//
//  Museums.swift
//  GoogleMapsDzLili
//
//  Created by Лилия on 6/16/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import Foundation

class Museum {
    var latitudeMuseum: Float
    var longitudeMuseum: Float
    var nameMuseum: String
    var descriptionMuseum: String
    
    init(latitudeMuseum: Float, longitudeMuseum: Float, nameMuseum: String, descriptionMuseum: String) {
        self.latitudeMuseum = latitudeMuseum
        self.longitudeMuseum = longitudeMuseum
        self.nameMuseum = nameMuseum
        self.descriptionMuseum = descriptionMuseum
    }
}
