//
//  Buttons.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 24-01-22.
//

import SwiftUI

struct LargeButton: View {
    var text = "Download files"

    var body: some View {
        Button(action: {}) {
            Text(text)
                .bold()
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(5)
    }
}

struct Buttons: View {
    var body: some View {
        List {
            LargeButton(text: "Large Button")
        }.navigationTitle("Buttons")
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}

