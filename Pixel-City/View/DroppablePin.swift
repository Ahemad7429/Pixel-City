//
//  DroppablePin.swift
//  Pixel-City
//
//  Created by AhemadAbbas Vagh on 08/11/18.
//  Copyright © 2018 AhemadAbbas Vagh. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
