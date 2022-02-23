//
//  Tab2.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 09-02-22.
//

import SwiftUI

struct Tab2: View {
    var body: some View {
        VStack {
            Text("Tab2")
            Spacer()
            NavigationLink.init("Go to View2") {
                View2()
            }
        }.tabItem {
            Label("Tab2", systemImage: "scribble")
        }
    }
}

struct Tab2_Previews: PreviewProvider {
    static var previews: some View {
        Tab2()
    }
}
