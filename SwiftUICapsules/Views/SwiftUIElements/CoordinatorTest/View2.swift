//
//  View3.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 09-02-22.
//

import SwiftUI

struct View2: View {
    var body: some View {
        VStack {
            Text("View2")
            NavigationLink.init("Go to View3") {
                View3()
            }
        }.navigationTitle("View2")
    }
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
