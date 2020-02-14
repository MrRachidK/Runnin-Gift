//
//  LandmarkAnnotation.swift
//  SheetSlideCard
//
//  Created by Tom Baranes on 04/02/2020.
//  Copyright © 2020 Wlad Dicario. All rights reserved.
//

import Foundation
import MapKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
    let event: Event
    let title: String?
    let annotationType: AnnotationType
    let coordinate: CLLocationCoordinate2D

    init(landmark: Event) {
        event = landmark
        title = landmark.nameEvent
        coordinate = landmark.location
        annotationType = landmark.annotationType
    }
}
