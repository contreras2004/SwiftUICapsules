//
//  TabView.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 09-02-22.
//

import SwiftUI

struct MainTabView: View {
    @State var selection: Int = 1
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.1)
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Tab1().tag(1)
            Tab2().tag(2)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
