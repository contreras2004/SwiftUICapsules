//
//  Tab1.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 09-02-22.
//

import SwiftUI

struct Tab1: View {
    @State var isView1Shown: Bool = false
    
    var body: some View {
        //NavigationView {
        VStack {
            Text("Este es el Tab1")
            Spacer()
            Text("     Tab 1             Tab2      ")
            Text("       |                 |       ")
            Text("    View 1            View 2     ")
            Text("       |                 |       ")
            Text("View1Destination      View 3     ")
            Spacer()
            
            NavigationLink("Go to View1", isActive: $isView1Shown) {
                View1(view1IsShown: $isView1Shown)
            }.frame(maxWidth: .infinity)
                .padding(12)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(5)
                .padding()
        }.tabItem {
            Label("Tab1", systemImage: "scribble")
        }
        //}
        
    }
}

struct Tab1_Previews: PreviewProvider {
    static var previews: some View {
        Tab1()
    }
}
