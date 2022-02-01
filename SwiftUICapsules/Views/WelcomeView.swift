//
//  WelcomeView.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 24-01-22.
//

import SwiftUI

struct WelcomeView: View {
    
    var foreverAnimation: Animation {
        Animation.linear(duration: 2.0)
            .repeatForever(autoreverses: false)
    }

    
    var body: some View {
        
        NavigationView {
            ZStack{
                Color(uiColor: UIColor.lightText)
                    .ignoresSafeArea()
                VStack(spacing: 0){
                    Text("SwiftUI \nCapsules")
                        .padding()
                        .multilineTextAlignment(.center)
                        .font(.title)
                        
                    Image("capsule")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing], 100)
                        .rotationEffect(Angle(degrees: 360))
                        //.animation(foreverAnimation)
                    Spacer()
                    NavigationLink("Lest get started!") {
                        ElementsListView()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
.previewInterfaceOrientation(.portrait)
    }
}
