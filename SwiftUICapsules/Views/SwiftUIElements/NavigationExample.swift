//
//  NavigationExample.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 08-02-22.
//

import SwiftUI
import Coordinator

class NavCoordinator: ObservableObject {
    @Published var selectedItem: String? = nil {
        didSet {
            debugPrint("Did set \(selectedItem)")
        }
    }
    /*@Published var activeLink: ViewId? = .nav1 {
        didSet {
            debugPrint("Hola: \(activeLink)")
        }
    }*/
    /*func viewIsActive(link: ViewId) -> Bool {
        return activeLink == link
    }*/
}

enum ViewId: String {
    case nav1
    case nav2
    case nav3
    case nav4
}

struct NavigationExample1: View, Identifiable {
    @EnvironmentObject var coordinator: NavCoordinator
    //@StateObject var coordinator: NavCoordinator = NavCoordinator()
    var id: ViewId = .nav1
    
    var body: some View {
        TabView {
            NavigationExample2().environmentObject(NavCoordinator())
                .tabItem {
                    Label("Nav2", systemImage: "scribble")
                }
                .tag(ViewId.nav2)
            NavigationExample3()
                .tabItem {
                    Label("Nav3", systemImage: "pencil.tip")
                }
                .tag(ViewId.nav2)
        }
        /*NavigationLink("Ir a NavigationExample2", tag: ViewId.nav2, selection: $coordinator.activeLink) {
            NavigationExample2(coordinator: coordinator)
        }
        NavigationLink(tag: ViewId.nav2, selection: $coordinator.activeLink, destination: {
            NavigationExample2(coordinator: coordinator)
        }, label: {
            Text("Go to nav2")}
        )
        */
        .navigationTitle("NavigationExample1")
    }
}

struct NavigationExample2: View, Identifiable {
    var id: ViewId = .nav2
    @EnvironmentObject var coordinator: NavCoordinator
    var body: some View {
        ZStack {
            Color(.lightGray)
            VStack {
                Text("Nav2")
                NavigationLink(
                    tag: ViewId.nav4.rawValue,
                    selection: $coordinator.selectedItem) {
                    NavigationExample4()
                } label: {
                    Text("Go to Nav4")
                }
            }
        }
        
        /*NavigationLink("Ir a NavigationExample3") {
            NavigationExample3()
        }.onAppear {
         //coordinator.activeLink = self.id
         }*/.navigationTitle("NavigationExample2")
            
    }
}

struct NavigationExample3: View, Identifiable {
    var id: ViewId = .nav3
    var body: some View {
        ZStack {
            Color(.gray)
            Text("Nav3")
        }
        /*NavigationLink("Ir a NavigationExample1") {
            NavigationExample1()
        }*/.navigationTitle("NavigationExample3")
    }
}

struct NavigationExample4: View, Identifiable {
    @EnvironmentObject var coordinator: NavCoordinator
    var id: ViewId = .nav4
    var body: some View {
        ZStack {
            Color(.gray)
            VStack {
                Text("This is Nav4")
                Spacer()
                /*NavigationLink(
                    tag: ViewId.nav2.rawValue,
                    selection: $coordinator.selectedItem) {
                    NavigationExample2()
                } label: {
                    Text("Go to Nav2")
                }*/
            }
            
            
        }
        /*NavigationLink("Ir a NavigationExample1") {
            NavigationExample1()
        }*/.navigationTitle("NavigationExample4")
    }
}

struct NavigationExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationExample1()
    }
}
