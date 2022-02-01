//
//  Texts.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 24-01-22.
//

import SwiftUI

struct Texts: View {
    
    var body: some View {
        List {
            Text("Text example number 1")
                .font(.title)
                .shadow(color: .blue, radius: 1, x: 2, y: 2)
            Text("Text example number 2")
                .font(.athleticOutfit(size: 24))
        }.onAppear(perform: printFontNames)
        .navigationTitle("Texts")
    }
    
    private func printFontNames() {
        for family: String in UIFont.familyNames {
            print(family)
            for names: String in UIFont.fontNames(forFamilyName: family)
            {
                print("== \(names)")
            }
        }
    }
}

struct Texts_Previews: PreviewProvider {
    static var previews: some View {
        Texts()
    }
}
