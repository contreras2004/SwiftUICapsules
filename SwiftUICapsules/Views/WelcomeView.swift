//
//  WelcomeView.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 24-01-22.
//

import SwiftUI

struct WelcomeView: View {
    
    let coordinator = AppCoordinator()
    
    @State private var rotating = false
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Color(uiColor: UIColor.lightText)
                    .ignoresSafeArea()
                VStack(spacing: 0){
                    Text("SwiftUI \nCapsules")
                        .padding()
                        .multilineTextAlignment(.center)
                        .font(.athleticOutfit(size: 36))
                        
                    Image("capsule")
                        .resizable()
                        .frame(width: 200, height: 200, alignment: Alignment(horizontal: SwiftUI.HorizontalAlignment.center, vertical: SwiftUI.VerticalAlignment.center))
                        .scaledToFit()
                        .rotationEffect(.degrees(rotating ? 360 : 0))
                        .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false), value: rotating)
                        .onAppear{
                            self.rotating = true
                        }
                        .padding()
                        //.animation(foreverAnimation)
                    NavigationLink("Lest get started!") {
                        ElementsListView(coordinator: coordinator)
                    }.padding()
                    Spacer()
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
.previewInterfaceOrientation(.portrait)
    }
}
