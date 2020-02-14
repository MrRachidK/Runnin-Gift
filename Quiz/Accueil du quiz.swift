//
//  ContentView.swift
//  App Sport
//
//  Created by Rachid K. on 03/02/2020.
//  Copyright © 2020 Rachid K. All rights reserved.
//

import SwiftUI

struct QuizAccueil: View {
    let theme = themes.randomElement()!
        
    var body: some View {
        NavigationView {
        ZStack {
            Color(red: 255.0 / 255.0, green: 98.0 / 255.0, blue: 0.0 / 255.0)
            .edgesIgnoringSafeArea(.all).opacity(0.7)
            VStack {
                Spacer()
                Spacer()
                Text("Quiz du jour :")
                    .font(.system(size: 60)).fontWeight(.bold).foregroundColor(.white)
                Spacer()
                Text(theme.name).font(.system(size: 38)).multilineTextAlignment(.center).foregroundColor(.white)
                Spacer()
                Spacer()
                NavigationLink(destination: Page_du_quiz()) {
                    Text("Appuyer ici pour commencer").padding().foregroundColor(.black)       .background(Color.white).cornerRadius(65)

                }
                Spacer()
                Spacer()
            }
        }.background(Color.orange).edgesIgnoringSafeArea(.all)
        }
        
    }
}


struct QuizAccueil_Previews: PreviewProvider {
    static var previews: some View {
        QuizAccueil()
    }
}
