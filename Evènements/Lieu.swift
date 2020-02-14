//
//  Lieu.swift
//  App Sport
//
//  Created by Rachid K. on 05/02/2020.
//  Copyright © 2020 Rachid K. All rights reserved.
//

import Foundation
import MapKit
import SwiftUI

struct Lieu {
    var longitude : Double
    var latitude : Double
    @State var adresse = ""

    init (latitude : Double, longitude : Double) {
        self.longitude = longitude
        self.latitude = latitude
        self.convertLatLongToAddress(latitude : latitude, longitude : longitude)
    }

func convertLatLongToAddress(latitude:Double,longitude:Double){

    let geoCoder = CLGeocoder()
    let location = CLLocation(latitude: latitude, longitude: longitude)
    geoCoder.reverseGeocodeLocation(location, completionHandler: { (placemarks, error) -> Void in

        // Place details
        var placeMark: CLPlacemark!
        placeMark = placemarks?[0]

        // Location name
        if let locationName = placeMark.location {
            print(locationName)
        }
        // Street address
        if let street = placeMark.thoroughfare {
            print(street)
            self.adresse = street
        }
        // City
        if let city = placeMark.subAdministrativeArea {
            print(city)
        }
        // Zip code
        if let zip = placeMark.isoCountryCode {
            print(zip)
        }
        // Country
        if let country = placeMark.country {
            print(country)
        }
    })

}
}
