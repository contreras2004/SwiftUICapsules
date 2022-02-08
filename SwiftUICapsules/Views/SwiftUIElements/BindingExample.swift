//
//  BindingExample.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 08-02-22.
//

import SwiftUI

//
//  NavigationExample.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 08-02-22.
//

import SwiftUI

struct BindingExample1: View {
    @State var color: UIColor
    @State var isShowingSheet = false
    @State var name: String = "Extraño.."
    var body: some View {
        ZStack {
            Color(color).ignoresSafeArea()
            VStack {
                Text("Hola \(name)")
                    .padding()
                Spacer()
                Text("Show sheet")
                    .onTapGesture {
                        isShowingSheet = true
                    }
                    .sheet(isPresented: $isShowingSheet, content: {
                        BindingExample2(color: $color, name: $name)
                    })
                    .padding()
            }
        }.navigationTitle("BindingExample1")
        
    }
}

struct BindingExample2: View {
    @Binding var color: UIColor
    @Binding var name: String
    var body: some View {
        VStack(alignment: .leading) {
            Text("Tu nombre:")
            TextField("", text: $name, prompt: Text("Ingresa tu nombre"))
                .padding()
                .font(.title2)
                .background(Color(uiColor: .lightGray))
            Spacer()
            Text("Cambia el color por el que te guste más 🤔").font(.title)
                .padding()
            Text("👉🏻 Rojo")
                .onTapGesture {
                    color = .red
                }
            Text("👉🏻 Verde")
                .onTapGesture {
                    color = .green
                }
            Text("👉🏻 Morado")
                .onTapGesture {
                    color = .purple
                }
            Text("👉🏻 Color CACA 💩")
                .onTapGesture {
                    color = .brown
                }
            Spacer()
        }.padding()
        .navigationTitle("BindingExample2")
    }
}

struct BindingExample_Previews: PreviewProvider {
    static var previews: some View {
        BindingExample1(color: .white)
    }
}
