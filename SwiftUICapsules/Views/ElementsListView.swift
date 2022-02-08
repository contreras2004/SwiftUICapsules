//
//  ElementsListView.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 24-01-22.
//

import SwiftUI
import Coordinator

struct ElementsListView: View {
    var coordinator: Coordinator?
    @State private var searchText = ""
    var body: some View {
        List {
            ForEach(AppCoordinatorRout.allCases) { route in
                coordinator?.navigate(route) { Text(route.text) }
            }
            /*Text("Hola")
            Text("Hola")
            Text("Hola")
            Text("Hola")
            Text("Hola")
            Text("Hola")
            Text("Hola")
            Text("Hola")
            Text("Hola")*/
        }
        .navigationTitle("SwiftUI Elements")
        //.searchable(text: $searchText)
    }
}

struct ElementsListView_Previews: PreviewProvider {
    static var previews: some View {
        ElementsListView(coordinator: nil)
    }
}
