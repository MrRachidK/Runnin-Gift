//
//  modalEvent.swift
//  appsport
//
//  Created by Gauthier Clarisse on 04/02/2020.
//  Copyright © 2020 Gauthier Clarisse. All rights reserved.
//

import SwiftUI

struct ModalEvent: View {
    let event: Event
    let isPresentedModally: Bool
    @State var showPlace : Bool = true
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        
        //        Form {
        ZStack {
            Colors()
            
            VStack (alignment : .leading){
                VStack {
                    if isPresentedModally {
                        HStack {Button("╳") {
                            self.presentationMode.wrappedValue.dismiss()
                            }
                        }.buttonStyle(PlainButtonStyle()).offset(x : 370, y : 15)
                    }
                }
                HStack {
                    Text(event.logoEvent)
                    Text(event.nameEvent).multilineTextAlignment(.center)
                }.font(.largeTitle).padding().multilineTextAlignment(.center)
                HStack {
                    Spacer()
                    Image(event.imageEvent).resizable().frame(width : 380, height : 270)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text(event.descriptionEvent).multilineTextAlignment(.center).padding()
                    Spacer()
                }

                Text("＠ \(event.siteEvent)").padding(.leading).padding(.top).padding(.bottom).foregroundColor(.blue).onTapGesture() {
                        UIApplication.shared.open(URL(string: "https://\(self.event.siteEvent)")!)
                    }
                    Text("🗓 \(event.dateEvent)").padding(.leading).padding(.bottom)
                    Text("🕰  \(event.heureEvent)").padding(.leading).frame(alignment: .leading).padding(.bottom)
                    
                    Text("🗺  \(event.lieuEvent)").padding(.leading).padding(.bottom)

                    Text("💶  \(event.prixEvent)").padding(.leading)
                Spacer()
            }
            
          
        }.navigationBarTitle("", displayMode: .inline)
    }
}

func Colors () -> Color {
    return Color (.white)
}

struct modalEvent_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ModalEvent(event: events[0], isPresentedModally: false)
        }
    }
}
