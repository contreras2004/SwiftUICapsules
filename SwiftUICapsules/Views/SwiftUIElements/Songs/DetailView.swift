//
//  DetailView.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 08-02-22.
//

import SwiftUI
import Kingfisher

struct DetailView: View {
    @Environment(\.presentationMode) var presentation
    var song: SongsResponse.Song
    /*var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(song.trackName)
                    .font(.title)
                    .multilineTextAlignment(TextAlignment.leading)
                Text(song.artistName)
                KFImage.url(song.artworkUrl100)
                    .resizable()
                    .scaledToFit()
                Group {
                    Button(action: {
                        self.presentation.wrappedValue.dismiss()
                    }) {
                       Text("Cerrar")
                            .frame(maxWidth: .infinity)
                            .padding(12)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                            .background(RoundedRectangle(cornerRadius: 5)
                                            .fill(Color.white)
                                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                            )
                    }
                }
                
            }.padding()
                
        }
    }*/
    var body: some View {
        VStack(alignment: .leading) {
                Text(song.trackName)
                    .font(.title)
                    .multilineTextAlignment(TextAlignment.leading)
                Text(song.artistName)
                KFImage.url(song.artworkUrl100)
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                
                Group{
                    Button(action: {
                        self.presentation.wrappedValue.dismiss()
                    }) {
                       Text("Cerrar")
                            .frame(maxWidth: .infinity)
                            .padding(12)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                            .background(RoundedRectangle(cornerRadius: 5)
                                            .fill(Color.white)
                                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                            )
                    }
                }.frame(maxHeight: .infinity, alignment: .bottom)
            }.padding()
        }
}

/*struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(song: SongsResponse.Song.init(id: 65, trackName: "Titulo de la cancion", artworkUrl60: URL(string: "capsule")!))
    }
}*/
