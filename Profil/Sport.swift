//
//  Sport.swift
//  App Sport
//
//  Created by Rachid K. on 05/02/2020.
//  Copyright © 2020 Rachid K. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

enum Sport: Int, CaseIterable, Identifiable {
    case football
    case handball
    case running
    case rugby
    case natation
    case tennis
    case badminton
    case judo
    case basketball
    case volleyball
    
    var id: Sport {
        self
    }
    
    var name: String {
        switch self {
        case .football:
            return "Football"
        case .handball:
            return "Handball"
        case .running:
            return "Running"
        case .rugby:
            return "Rugby"
        case .natation:
            return "Natation"
        case .tennis:
            return "Tennis"
        case .badminton:
            return "Badminton"
        case .judo:
            return "Judo"
        case .basketball:
            return "Basket-ball"
        case .volleyball:
            return "Volley-ball"
        }
    }
}
class SelectedSport: ObservableObject {
@Published var sport = [Sport]()
}


