//
//  View2.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 09-02-22.
//

import SwiftUI
import Combine

struct View1Destination: View {
    
    let item: String
    @Binding var view1IsShown: Bool
    @Binding var selectedItem: String? {
        didSet {
            debugPrint("Ha seteado el selectedItem en el binding: \(selectedItem)")
        }
    }
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Seleccionaste:")
            Text(selectedItem ?? "")
            
            Button {
                selectedItem = "2"
            } label: {
                Text("Change selection to 2")
            }
            
            Button {
                selectedItem = nil
            } label: {
                Text("Make the selection nil")
            }
            
            Button {
                view1IsShown = false
                //selectedItem = nil
            } label: {
                Text("Make the selection nil and pop to root")
            }

        }.navigationTitle("View2Destination")
        
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View1Destination(item: "", view1IsShown: .constant(true),selectedItem: .constant(""))
    }
}
