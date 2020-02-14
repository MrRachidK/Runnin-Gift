//
//  MultiLM.swift
//  screen
//
//  Created by Alexandre Boulnois on 06/02/2020.
//  Copyright © 2020 Alexandre Boulnois. All rights reserved.
//

import Foundation

import SwiftUI


struct MultiLineTextView: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.isScrollEnabled = true
        view.isEditable = true
        view.isUserInteractionEnabled = true
        view.backgroundColor = UIColor(white: 0.0, alpha: 0.05)
        return view
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}
