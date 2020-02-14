//
//  Main View.swift
//  App Sport
//
//  Created by Rachid K. on 05/02/2020.
//  Copyright © 2020 Rachid K. All rights reserved.
//

import SwiftUI

struct Main_View: View {

    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
            }
            QuizAccueil()
                .tabItem {
                    Image(systemName: "questionmark")
                    Text("Quizz")
            }
            Profil()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
            }
            Events()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Evènements")
            }
            Liste_cadeaux()
                .tabItem {
                    Image(systemName: "gift")
                    Text("Cadeaux")
            }
        }.edgesIgnoringSafeArea(.top).accentColor(Color("thenewblack"))
    }
}

struct Main_View_Previews: PreviewProvider {
    static var previews: some View {
        Main_View()
    }
}
