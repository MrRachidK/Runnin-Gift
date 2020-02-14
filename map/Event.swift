//
//  EventDatabase.swift
//  test3
//
//  Created by Gauthier Clarisse on 06/02/2020.
//  Copyright © 2020 Gauthier Clarisse. All rights reserved.
//

import Foundation
import MapKit

struct Event: Identifiable {
    var id = UUID()
    var sportEvent : String
    var prixEvent : String
    var logoEvent: String
    var nameEvent: String
    var descriptionEvent: String
    var siteEvent: String
    var dateEvent: String
    var heureEvent: String
    var lieuEvent: String
    var imageEvent: String
    let annotationType: AnnotationType
    let location: CLLocationCoordinate2D
}
