//
//  ToggleSwitch.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 24-01-22.
//

import SwiftUI

struct ToggleSwitch: View {
    @State var showText: Bool = false
    
    var body: some View {
        List {
            Toggle("¿Mostrar texto?", isOn: $showText)

            if showText {
                Text("Holi 🙋‍♂️")
            }
        }.navigationTitle("Toggles")
    }
}

struct ToggleSwitch_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSwitch()
    }
}
