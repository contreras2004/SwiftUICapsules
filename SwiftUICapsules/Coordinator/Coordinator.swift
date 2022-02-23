//
//  Coordinator.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 01-02-22.
//

import SwiftUI
import Coordinator

enum AppCoordinatorRout: Route {
    case text
    case toggles
    case images
    case buttons
    case songs
    case searchBar
    case navigationExample
    case bindingExample
    case coordinatorTest
    
    var text: String {
        switch self {
        case .text:
            return "Textos"
        case .toggles:
            return "Toggles"
        case .images:
            return "Imágenes"
        case .buttons:
            return "Botones"
        case .songs:
            return "Canciones"
        case .searchBar:
            return "Búsqueda"
        case .navigationExample:
            return "Ejemplo de Navegación"
        case .bindingExample:
            return "Binding básico"
        case .coordinatorTest:
            return "Coordinator Test"
        }
    }
}

extension AppCoordinatorRout: CaseIterable { }

extension AppCoordinatorRout: Identifiable {
    var id: Self { self }
}



class AppCoordinator: Coordinator {
    
    func navigate<T>(_ route: Route, content: () -> T) -> AnyView where T : View {
        switch route as? AppCoordinatorRout {
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
            return AnyView(NavigationLink(destination: SongsView(provider: AppProvider())) {
                content()
            })
        case .searchBar:
            return AnyView(NavigationLink(destination: SearchBar()) {
                content()
            })
        case .navigationExample:
            return AnyView(NavigationLink(destination: NavigationExample1()) {
                content()
            })
        case .bindingExample:
            return AnyView(NavigationLink(destination: BindingExample1(color: .white)) {
                content()
            })
        case .coordinatorTest:
            return AnyView(NavigationLink(destination: MainTabView()) {
                content()
            })
        case .none:
            return AnyView(NavigationLink(destination: Texts()) {
                content()
            })
        }
    }
}


/*extension Route: CaseIterable { }

extension Route: Identifiable {
    var id: Self { self }
}*/
