//
//  Structure du quiz.swift
//  App Sport
//
//  Created by Rachid K. on 04/02/2020.
//  Copyright © 2020 Rachid K. All rights reserved.
//

import Foundation

struct QuizzAnswer : Identifiable {
    var id = UUID()
    var answerNumber : Int
    var answer : String
}

struct Questions {
    var phrase : String
    var goodAnswer : Int
    var answers : Array<QuizzAnswer>
    var explication : String
}

func getQuizz1() -> Array<Questions>  {
    
    var quizz1 : Array<Questions> = []
    
    let Q1 = Questions(
        phrase : "Lesquels de ces deux équipes ont joué le \"match de la honte\" en 1982, un match du premier tour qui a qualifié à l'amiable les deux équipes ?",
        goodAnswer : 2,
        answers : [QuizzAnswer(answerNumber : 1, answer : "L'Italie et le Brésil"), QuizzAnswer(answerNumber : 2, answer : "L'Allemagne et l'Autriche"), QuizzAnswer(answerNumber : 3, answer : "L'Ecosse et la France"), QuizzAnswer(answerNumber : 4, answer : "Les Pays-Bas et l'Argentine")], explication : "Ce match poussera la FIFA à trouver des solutions contre les matchs arrangés")
    
    let Q2 = Questions(
    phrase : "En quelle année l'Angleterre a-t-elle remporté la Coupe ?",
    goodAnswer : 1,
    answers : [QuizzAnswer(answerNumber : 1, answer : "1966"), QuizzAnswer(answerNumber : 2, answer : "1970"), QuizzAnswer(answerNumber : 3, answer : "1974"), QuizzAnswer(answerNumber : 4, answer : "1978")], explication : "En gagnant contre l'Allemagne 4-2 après prolongations ...")
    
    let Q3 = Questions(
    phrase : "Dans quel pays s'est déroulé la Coupe du Monde 1958 ?",
    goodAnswer : 3,
    answers : [QuizzAnswer(answerNumber : 1, answer : "Le Chili"), QuizzAnswer(answerNumber : 2, answer : "La Suisse"), QuizzAnswer(answerNumber : 3, answer : "La Suède"), QuizzAnswer(answerNumber : 4, answer : "La Belgique")], explication : "Le Brésil gagnera avec un certain Pelé, qui a seulement 17 ans cette année-là.")
    
    let Q4 = Questions(
    phrase : "Quel est le meilleur résultat de la Turquie en Coupe du monde ?",
    goodAnswer : 4,
    answers : [QuizzAnswer(answerNumber : 1, answer : "Premier tour"), QuizzAnswer(answerNumber : 2, answer : "Huitièmes de finale"), QuizzAnswer(answerNumber : 3, answer : "Quarts de finale"), QuizzAnswer(answerNumber : 4, answer : "Demi-finale")], explication : "La Corée du Sud fera également demi-finale grâce à un arbitrage litigieux.")
    
    let Q5 = Questions(
       phrase : "Quelle a été l'affiche de la finale de la Coupe du monde 1978 ?",
       goodAnswer : 3,
       answers : [QuizzAnswer(answerNumber : 1, answer : "Brésil - Italie"), QuizzAnswer(answerNumber : 2, answer :"Angleterre - RFA"), QuizzAnswer(answerNumber : 3, answer : "Argentine - Pays-Bas"), QuizzAnswer(answerNumber : 4, answer : "France - Espagne")], explication : "En Argentine dans un contexte dictatorial très fort.")
    
    let Q6 = Questions(
    phrase : "En quelle année la RFA a-t-elle gagné la coupe du Monde lors du match baptisé le \"miracle de Berne\" ?",
    goodAnswer : 2,
    answers : [QuizzAnswer(answerNumber : 1, answer : "1938"), QuizzAnswer(answerNumber : 2, answer :"1954"), QuizzAnswer(answerNumber : 3, answer : "1962"), QuizzAnswer(answerNumber : 4, answer : "1970")], explication : "Elle a gagné face à la Hongrie 3-2 lors d'un match controversé.")
    
    let Q7 = Questions(
    phrase : "Quel joueur a eu la particularité d'être nommé dans l'équipe-type d'une Coupe du monde alors qu'il a été éliminé au premier tour ?",
    goodAnswer : 3,
    answers : [QuizzAnswer(answerNumber : 1, answer : "Roger Milla"), QuizzAnswer(answerNumber : 2, answer :"Josef Masopust"), QuizzAnswer(answerNumber : 3, answer : "Jorge Gonzalez"), QuizzAnswer(answerNumber : 4, answer : "Zbigniew boniek")], explication : "Il a joué pour le Salvador et c'était en 1982.")
    
    let Q8 = Questions(
    phrase : "Quel pays fera croire à ses concitoyens que la Coupe du monde 2010 a été remportée par le Portugal ?",
    goodAnswer : 4,
    answers : [QuizzAnswer(answerNumber : 1, answer : "La Chine"), QuizzAnswer(answerNumber : 2, answer :"La Thaïlande"), QuizzAnswer(answerNumber : 3, answer : "Le Congo"), QuizzAnswer(answerNumber : 4, answer : "La Corée du Nord")], explication : "Car la sélection coréenne avait perdu 7-0 face à eux lors des matchs de poule.")
    
    let Q9 = Questions(
    phrase : "Quel sélection affirmait pouvoir \"envoyer à la retraite\" Zinedine Zidane lors de la Coupe du monde 2006 ?",
    goodAnswer : 1,
    answers : [QuizzAnswer(answerNumber : 1, answer : "L'Espagne"), QuizzAnswer(answerNumber : 2, answer :"L'Allemagne"), QuizzAnswer(answerNumber : 3, answer : "L'Italie"), QuizzAnswer(answerNumber : 4, answer : "Le Brésil")], explication : "Résultat des courses : elle a perdu 3-1 où l'un des buts a été marqué par ... Zidane.")
    
    let Q10 = Questions(
    phrase : "De quelle nationalité est le tout premier buteur de l'histoire de la Coupe du monde ?",
    goodAnswer : 2,
    answers : [QuizzAnswer(answerNumber : 1, answer : "Uruguayenne"), QuizzAnswer(answerNumber : 2, answer :"Française"), QuizzAnswer(answerNumber : 3, answer : "Anglaise"), QuizzAnswer(answerNumber : 4, answer : "Mexicaine")], explication : "Il s'agit de Lucien Laurent qui inscrira ce but face au Mexique (4-1) à la 19e minute de jeu.")
    
    quizz1.append(contentsOf: [Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10])
    
    return quizz1
}



