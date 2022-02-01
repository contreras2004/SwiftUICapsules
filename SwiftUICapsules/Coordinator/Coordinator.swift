//
//  Coordinator.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 01-02-22.
//

import SwiftUI

struct Coordinator {
    
    static func navigate<T: View>(_ route: Route, content: () -> T) -> AnyView {
        
        switch route {
        case .text:
            return AnyView(NavigationLink(destination: Texts()) {
                content()
            })
        case .toggles:
            return AnyView(NavigationLink(destination: ToggleSwitch()) {
                content()
            })
        case .images:
            return AnyView(NavigationLink(destination: Images()) {
                content()
            })
        case .buttons:
            return AnyView(NavigationLink(destination: Buttons()) {
                content()
            })
        case .songs:
            return AnyView(NavigationLink(destination: SongsView()) {
                content()
            })
        case .searchBar:
            return AnyView(NavigationLink(destination: SearchBar()) {
                content()
            })
        }
    }
}
