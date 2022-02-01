//
//  SearchBar.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 31-01-22.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView {
            Text("Searching for \(searchText)")
                
                
        }.navigationTitle("Searchable Example")
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
