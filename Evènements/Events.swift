//
//  Events.swift
//  App Sport
//
//  Created by Rachid K. on 05/02/2020.
//  Copyright © 2020 Rachid K. All rights reserved.
//

import SwiftUI

struct Events: View {
    @State private var searchTerm : String = ""
    @ObservedObject var keyboard = KeyboardResponder()
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                
                VStack {
                    HStack {
                        SearchBarView(searchText : self.$searchTerm)
                    }
                    List(events.filter { event in
                        event.nameEvent.lowercased().contains(self.searchTerm.lowercased()) || event.dateEvent.lowercased().contains(self.searchTerm.lowercased()) || event.lieuEvent.lowercased().contains(self.searchTerm.lowercased()) || event.prixEvent.lowercased().contains(self.searchTerm.lowercased()) || event.heureEvent.lowercased().contains(self.searchTerm.lowercased()) || event.sportEvent.lowercased().contains(self.searchTerm.lowercased()) || self.searchTerm.isEmpty }, id : \.id)  { event in
                            NavigationLink(destination: ModalEvent(event: event, isPresentedModally: false)) {
                                
                                
                                VStack {
                                    Image(event.imageEvent).resizable().frame(width: 130, height: 100, alignment: .leading).clipShape(Circle())
                                }
                                VStack(alignment : .leading) {
                                    Text(event.dateEvent).foregroundColor(Color( "thenewblack"))
                                    Text(event.nameEvent).fontWeight(.bold).font(.system(size : 20))
                                    Text(event.lieuEvent)
                                }
                            }
                    }.navigationBarTitle("Listes d'événements")
                    
                }.padding(.bottom, self.keyboard.currentHeight - geometry.safeAreaInsets.bottom).buttonStyle(PlainButtonStyle())
            }
        }
    }
}





struct Events_Previews: PreviewProvider {
    static var previews: some View {
        
        Events()
    }
}
