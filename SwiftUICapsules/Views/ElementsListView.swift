//
//  ElementsListView.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 24-01-22.
//

import SwiftUI

struct ElementsListView: View {
    @State private var searchText = ""
    var body: some View {
        List {
            ForEach(Route.allCases) { rout in
                Coordinator.navigate(rout) { Text(rout.text) }
            }
        }
        .navigationTitle("SwiftUI Elements")
        .searchable(text: $searchText)
    }
}

struct ElementsListView_Previews: PreviewProvider {
    static var previews: some View {
        ElementsListView()
    }
}
