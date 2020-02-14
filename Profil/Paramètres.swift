//
//  parametre.swift
//  appli sport
//
//  Created by leo on 14/11/1398 AP.
//  Copyright © 1398 leo  duforest. All rights reserved.
//

import SwiftUI

struct Paramètres: View {
    
    
    
    @State var activerSon = true
    var body: some View {
        Form {
           
            Button(action: {
            }, label: { Text("Notifications") }).foregroundColor(.black)
            
            Button(action: {
            }, label: { Text("Langues") }).foregroundColor(.black)
          
            Button(action: {
            }, label: { Text("Localisation") }).foregroundColor(.black)
            
            Toggle(isOn: $activerSon) {
                Text("Son")}
                
            Button(action: {
            }, label: { Text("Aide & assistance") }).foregroundColor(.black)
           
            Button(action: {
            }, label: { Text("Nous contacter") }).foregroundColor(.black)

            Button(action: {
            }, label: { Text("Conditions d'utilisations") }).foregroundColor(.black)
            
            Button(action: {
            }, label: { Text("Confidentialité") }).foregroundColor(.black)
            
            Button(action: {
            }, label: { Text("Mentions légales") }).foregroundColor(.black)
           
            Button(action: {
            }, label: { Text("Déconnexion") }).foregroundColor(.black)
            
            
        }.navigationBarTitle("Paramètres généraux")
        
    }
}



struct Paramètres_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Paramètres()
        }
    }
}

