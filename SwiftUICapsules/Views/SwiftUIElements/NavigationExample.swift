//
//  NavigationExample.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 08-02-22.
//

import SwiftUI

struct NavigationExample1: View {
    var body: some View {
        NavigationLink("Ir a NavigationExample2") {
            NavigationExample2()
        }.navigationTitle("NavigationExample1")
    }
}

struct NavigationExample2: View {
    var body: some View {
        NavigationLink("Ir a NavigationExample3") {
            NavigationExample2()
        }.navigationTitle("NavigationExample2")
    }
}

struct NavigationExample3: View {
    var body: some View {
        NavigationLink("Ir a NavigationExample1") {
            NavigationExample1()
        }.navigationTitle("NavigationExample3")
    }
}

struct NavigationExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationExample1()
    }
}
