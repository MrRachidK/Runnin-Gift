//
//  exemple.swift
//  KDO
//
//  Created by El bachiri Moussa on 05/02/2020.
//  Copyright © 2020 El bachiri Moussa. All rights reserved.
//

import SwiftUI


//
//  ContentView.swift
//  favoris
//
//  Created by Pascaline Thuilliez on 04/02/2020.
//  Copyright © 2020 Pascaline Thuilliez. All rights reserved.
//

import SwiftUI

//struct Rec: Identifiable {
//    let id = UUID()
//    let image: String
//    let name: String
//    let description : String
//    let points : Int
//    let objectif : String
//}




struct Description: View {
    
    let recomp: kdo
    
    
    var body: some View {

        
        
        VStack {
            
            
            Image(recomp.image)
                .resizable().frame(width : 270, height: 200).cornerRadius(10)
                .scaledToFit()
                .padding([.horizontal, .top], 7)
            
            Text(recomp.name).bold().lineLimit(nil).padding()
            Text(recomp.description).lineLimit(nil).padding().multilineTextAlignment(.center)
            Spacer()
            VStack (spacing: 30) {
            
                
            
            
            ZStack {
                // 3.
                Circle()
                    .stroke(Color.gray, lineWidth: 20)
                    .opacity(0.1)
                // 4.
                Circle()
                    .trim(from: 0, to: CGFloat(Double(myPoints) / Double(recomp.point)))
                    .stroke(Color.orange, lineWidth: 20)
                    .rotationEffect(.degrees(-90))
                // 5.
                .overlay(
                    Text("\(Int(Double(myPoints) / Double(recomp.point) * 100)) %"))

            }.padding(20)
            .frame(height: 200)
//                Slider(value : $progress)
            }
            
            if myPoints >= recomp.point {
               Text("Génial, tu peux commander ton cadeau !").foregroundColor(Color.orange).bold().multilineTextAlignment(.center).padding()
            }
            else
                {
                    Text("Allez, encore un effort !").foregroundColor(Color.orange).bold().multilineTextAlignment(.center).padding()}
           
            
            if myPoints >= recomp.point {
            Button(action: { }, label: { Text("Commander").bold()} ).padding().foregroundColor(.white).background(Color.orange).cornerRadius(50)
            }
            else {
                Button(action: { }, label: { Text("Commander").bold()} ).padding().foregroundColor(.white).background(Color.gray).cornerRadius(50)
            }
            Spacer()
        
           
        }.navigationBarTitle("Votre cadeau", displayMode: .inline).background(Color.white).padding()
//            .overlay(
//                RoundedRectangle(cornerRadius: 5)
//                    .stroke(Color.orange, lineWidth: 2)
//            )
        //.shadow(color: .orange, radius: 2)
    
    }
}


struct Description_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Description(recomp: recompenses[0])
        }
    }
}


