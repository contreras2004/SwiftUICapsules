//
//  View1.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 09-02-22.
//

import SwiftUI

struct View1: View {
    let items: [String] = ["1", "2", "3", "4"]
    @Binding var view1IsShown: Bool
    @State var selectedItem: String? = nil {
        didSet {
            debugPrint("selectedItem: \(selectedItem)")
        }
    }
    
    var body: some View {
        VStack {
            List(items, id: \.self, selection: $selectedItem) { item in
                NavigationLink("Option: \(item)", tag: item, selection: $selectedItem) {
                    View1Destination(item: item, view1IsShown: $view1IsShown, selectedItem: $selectedItem)
                }
            }
            Button {
                view1IsShown = false
            } label: {
                Text("pop")
            }
            Text("Seleccionado actualmente: ")
            Text(selectedItem ?? "")
        }.navigationTitle("View1")
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1(view1IsShown: .constant(false))
    }
}
