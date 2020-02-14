//
//  Page du quiz.swift
//  App Sport
//
//  Created by Rachid K. on 04/02/2020.
//  Copyright © 2020 Rachid K. All rights reserved.
//

import SwiftUI

struct Page_du_quiz: View {
    @State var showDelay : Bool = false
    @State var showExplication : Bool = false
    let congratulations = "Bonne réponse"
    let quizz = getQuizz1()
    @State var score = 0
    @State var questionNumber = 1
    
    @State var currentQuestion = Questions(
        phrase : "Lesquels de ces deux équipes ont joué le \"match de la honte\" en 1982, un match du premier tour qui a qualifié à l'amiable les deux équipes ?",
        goodAnswer : 2,
        answers : [QuizzAnswer(answerNumber : 1, answer : "L'Italie et le Brésil"), QuizzAnswer(answerNumber : 2, answer : "L'Allemagne et l'Autriche"), QuizzAnswer(answerNumber : 3, answer : "L'Ecosse et la France"), QuizzAnswer(answerNumber : 4, answer : "Les Pays-Bas et l'Argentine")], explication : "Ce match poussera la FIFA à trouver des solutions contre les matchs arrangés")
    
    var body: some View {
        ZStack {
            Color(red: 255.0 / 255.0, green: 98.0 / 255.0, blue: 0.0 / 255.0).opacity(0.7)
           .edgesIgnoringSafeArea(.all)
        VStack {
            
            Text("Question n°\(questionNumber)").font(.system(size : 30)).foregroundColor(.white)
            Spacer()
        Text("\(currentQuestion.phrase)").multilineTextAlignment(.center).padding().foregroundColor(.white)
            Spacer()
            ForEach(currentQuestion.answers, id: \.id) {reponse in
                Button (action : {
                    if reponse.answerNumber != self.currentQuestion.goodAnswer {
                        self.showExplication = true
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        if reponse.answerNumber == self.currentQuestion.goodAnswer {
                            self.score += 1
                            self.showDelay = true

                        }
                        self.questionNumber += 1

                        self.currentQuestion = self.quizz.randomElement()!
                    }
                }, label : {
                    VStack {
                        Text("\(reponse.answer)").padding().multilineTextAlignment(.center).foregroundColor(.white)
                            .frame(width: 270, height: 60).background(Color(red: 215.0 / 255.0, green: 125.0 / 255.0, blue: 70.0 / 255.0)).overlay(
                            RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.white, lineWidth:(3))).shadow(radius: 5)
                        
                    }
                    
                    
                    
                }).background(reponse.answerNumber == self.currentQuestion.goodAnswer ? Color.green : Color.red).cornerRadius(50).padding()
                
                
            }.navigationBarBackButtonHidden(true)

            
//            Spacer()
//            VStack {
//            if showExplication {
//                Text(currentQuestion.explication).foregroundColor(.red)
//            }
//            else if showDelay {
//                    Text ("Bonne réponse").foregroundColor(.green)
//                }
//
//            }
            
            Spacer()
            Text("Score : \(score)/\(questionNumber - 1)")
                .fontWeight(.bold)
                .font(Font.system(size: 36)).foregroundColor(.white)
            Spacer()
            
        }
    }
    }
}
    

struct Page_du_quiz_Previews: PreviewProvider {
    static var previews: some View {
        Page_du_quiz()
    }
}
