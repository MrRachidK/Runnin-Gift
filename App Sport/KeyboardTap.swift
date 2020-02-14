//
//  KeyboardTap.swift
//  App Sport
//
//  Created by Rachid K. on 12/02/2020.
//  Copyright © 2020 Rachid K. All rights reserved.
//

import Foundation
import SwiftUI


struct ResignKeyboardOnTapGesture: ViewModifier {
    var gesture = TapGesture().onEnded {
        UIApplication.shared.endEditingit(true)
    }

    func body(content: Content) -> some View {
        content.gesture(gesture)
    }
}

extension View {
    func resignKeyboardOnTapGesture() -> some View {
        modifier(ResignKeyboardOnTapGesture())
    }
}

extension UIApplication {
    func endEditingit(_ force: Bool) {
        windows.first { $0.isKeyWindow }?.endEditing(force)
    }
}
