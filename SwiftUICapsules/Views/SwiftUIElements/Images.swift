//
//  Images.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 24-01-22.
//

import SwiftUI

struct Images: View {
    var body: some View {
        List {
            HStack {
                Image(systemName: "airtag.radiowaves.forward.fill")
                Text("SF Symbol")
            }
            HStack {
                Image(systemName: "sun.dust.fill")
                    .foregroundColor(.red)
                Text("Another SF Symbol w custom color")
            }
            HStack {
                Image("capsule")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25, alignment: .leading)
                Text("A custom image")
            }
            HStack {
                Image("capsule")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25, alignment: .leading)
                    .foregroundColor(.blue)
                Text("A custom image w color overlay")
            }
        }.navigationTitle("Images")
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
