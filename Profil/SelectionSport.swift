//
//  SélectionSport.swift
//  App Sport
//
//  Created by leo  duforest on 21/11/1398 AP.
//  Copyright © 1398 Rachid K. All rights reserved.
//
import Foundation
import SwiftUI

struct SelectionSport: View {
    @State private var selections = [Sport]()

    @ObservedObject var selectedsport: SelectedSport

    init(_ selectedsport: SelectedSport) {
        self.selectedsport = selectedsport
    }

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("")) {
                    ForEach(Sport.allCases) { item in
                        MultipleSelectionRow(title: item.name, isSelected: self.selections.contains(item)) {
                            if self.selections.contains(item) {
                                self.selections.removeAll(where: { $0 == item })
                            }
                            else {
                                self.selections.append(item)
                            }
                        }
                }
            }
        }
             .onAppear(perform: { self.selections = self.selectedsport.sport })
                        .listStyle(GroupedListStyle())
                        .navigationBarTitle("Sport", displayMode: .inline)
                        .navigationBarItems(trailing:
                            Button(action: {
                                self.selectedsport.sport = self.selections
                                self.presentationMode.wrappedValue.dismiss()
                            }) {
                                Text("OK").foregroundColor(.orange)
                            }
                        )
                    }
                }
            }













struct SelectionSport_Previews: PreviewProvider {
    static var previews: some View {
SelectionSport(SelectedSport())
    }
}

