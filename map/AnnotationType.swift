//
//  AnnotationType.swift
//  SheetSlideCard
//
//  Created by Tom Baranes on 05/02/2020.
//  Copyright © 2020 Wlad Dicario. All rights reserved.
//

import Foundation

enum AnnotationType: String {
    case pin
    case tennis
    case footus
    case bad
    case run
    case basket
    case hockey
    case hache
    case judo
    case bourle
    
    var imageName : String {
        switch self {
        case .pin :
            return "foot"
        case .tennis :
            return "tennisBall"
        case .footus :
            return "footus"
        case .bad :
            return "bad"
        case .run :
            return "run"
        case .basket :
            return "basket"
        case .hockey :
            return "hockey"
        case .hache :
            return "hache"
        case .judo :
            return "judo"
        case .bourle :
            return "bourle"
        }
    }
}
