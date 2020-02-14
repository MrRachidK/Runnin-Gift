//
//  ContentView.swift
//  SheetSlideCard
//
//  Created by Wlad Dicario on 28/01/2020.
//  Copyright © 2020 Wlad Dicario. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {    
    @State private var landmarksList = events
    @State private var selectedLandmark: LandmarkAnnotation? = nil
    @State private var showingPlaceDetails = false
    @State private var searchTerm : String = ""

    
    let localSearch = LocalSearchController()
    
    var body: some View {
        ZStack(alignment: .top) {
            MapView(landmarks: $landmarksList,
                    selectedLandmark: $selectedLandmark,
                    showingPlaceDetails: $showingPlaceDetails)
                .sheet(isPresented: $showingPlaceDetails) {
                    ModalEvent(event: self.selectedLandmark!.event, isPresentedModally: true)
                }.edgesIgnoringSafeArea(.all)
            SearchBarView(searchText : self.$searchTerm, onCommit: {
                self.landmarksList = events.filter { event in
                    event.sportEvent.lowercased().contains(self.searchTerm.lowercased()) || self.searchTerm.isEmpty
                }
            }).cornerRadius(10).padding()
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        Group { ContentView().environment(\.colorScheme, .dark)
            ContentView().environment(\.colorScheme, .light)
        }
    }
}
}
