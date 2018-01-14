//
//  Constants.swift
//  MapCity
//
//  Created by Ljubomir on 1/14/18.
//  Copyright © 2018 Ljubomir. All rights reserved.
//

import Foundation


let apiKey = "e586e50ad75dbc26b89be757fd280abc"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    
}



