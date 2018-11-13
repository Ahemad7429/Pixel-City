//
//  Constant.swift
//  Pixel-City
//
//  Created by AhemadAbbas Vagh on 10/11/18.
//  Copyright © 2018 AhemadAbbas Vagh. All rights reserved.
//

import Foundation

let apiKey = "638beca9a282ab9bc4c1064e43f3f628"

func getFlickrUrl(forKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
