//
//  MultipleSelectionRow.swift
//  App Sport
//
//  Created by leo  duforest on 21/11/1398 AP.
//  Copyright © 1398 Rachid K. All rights reserved.
//

import Foundation
import SwiftUI

struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark").foregroundColor(.orange)
                }
            }
        }.accentColor(.black)
    }
}
