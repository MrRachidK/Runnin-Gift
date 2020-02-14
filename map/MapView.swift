//
//  MapView.swift
//  SheetSlideCard
//
//  Created by Wlad Dicario on 28/01/2020.
//  Copyright © 2020 Wlad Dicario. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    @Binding var landmarks: [Event]
    @Binding var selectedLandmark: LandmarkAnnotation?
    @Binding var showingPlaceDetails: Bool

    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.delegate = context.coordinator
        return map
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 50.6333, longitude: 3.0667)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)

        view.removeAnnotations(view.annotations)
        let newAnnotations = landmarks.map { LandmarkAnnotation(landmark: $0) }
        view.addAnnotations(newAnnotations)
    }

    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator(parent: self)
    }

}
