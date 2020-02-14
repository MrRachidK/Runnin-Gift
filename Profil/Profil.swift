//
//  profil.swift
//  appli sport
//
//  Created by leo  duforest on 15/11/1398 AP.
//  Copyright © 1398 leo  duforest. All rights reserved.
//

import SwiftUI






struct Profil: View {
    @State var description: String = ""
    @State private var Niveaux = "Niveau"
    @State var details: String = ""
    @State private var selectedStrength: String = "Mild"
    @State var pseudo: String = ""
    @State var age: String = ""
    @State private var wakeUp = Date()
    @State var niveaux = ["Néophyte", "Confirmé", "Expert"]
    @State private var selectedNiveaux = 0
    @State private var showSportSheet = false
    @ObservedObject var selectedsport = SelectedSport()
    @ObservedObject var keyboard = KeyboardResponder()
    
    
    var body: some View {
        
        
        NavigationView {
            
            ScrollView {

                VStack {
                    ZStack(alignment: .top) {
                        Color("Blues")

                        VStack {
                          
                            Image("fellaini").resizable()
                                .clipShape(Circle())
                                .frame(width: 150, height: 150)
                            Text("Points : \(myPoints)")
                        }.padding()
                    }
                    VStack(alignment: .leading) {
                        HStack {
                        Text("Pseudonyme :").padding()
                            TextField("", text: $pseudo).background(Color(red: 217.0 / 255.0, green: 217.0 / 255.0, blue: 217.0 / 255.0)).cornerRadius(10).padding(.trailing)
                        }
                        HStack {
                        Text("Âge :").padding()
                        TextField("", text: $age).background(Color(red: 217.0 / 255.0, green: 217.0 / 255.0, blue: 217.0 / 255.0)).cornerRadius(10).padding()
                        }
                        VStack {
                            Picker(selection: $selectedNiveaux, label: Text("Votre Niveau")) {
                                ForEach(0 ..< niveaux.count ) {
                                    Text(self.niveaux[$0])
                                }
                            }.pickerStyle(SegmentedPickerStyle())

                        }.padding()
                    }

                    Button(action: {
                        self.showSportSheet.toggle()
                    }) {
                        HStack {
                            Text("Sport(s) préféré(s) :")
                            Text("\(selectedsport.sport.count)")
                        }.padding(.bottom)
                    }
                    .sheet(isPresented: $showSportSheet) {
                        SelectionSport(self.selectedsport)
                    }
                }
                Text("Description :")
                MultiLineTextView(text: $details).frame(width: 350, height: 150).background(Color(red: 217.0 / 255.0, green: 217.0 / 255.0, blue: 217.0 / 255.0)).cornerRadius(10).padding(.bottom, self.keyboard.currentHeight)


                }.navigationBarTitle("Profil").navigationBarItems(trailing:
                    NavigationLink(destination: Paramètres()) {
                        Image(systemName: "gear").frame(width : 25, height : 25)
                }).resignKeyboardOnTapGesture()
        }
            
            
    }
}





struct Profil_Previews: PreviewProvider {
    static var previews: some View {
        Profil()
    }
}





