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
            NavigationLink("Text") { Texts() }
            NavigationLink("Toggle Switch") { ToggleSwitch() }
            NavigationLink("Images") { Images() }
            NavigationLink("Buttons") { Buttons() }
            NavigationLink("Songs") { SongsView() }
            NavigationLink("SearchBar") { SearchBar() }
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
