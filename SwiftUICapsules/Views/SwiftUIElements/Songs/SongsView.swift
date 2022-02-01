//
//  SongsView.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 31-01-22.
//

import SwiftUI
import Alamofire
import Kingfisher
import UIKit

struct ComplexObject {
    let state: Bool = false
}

struct SongsView: View {
    let artists: [String] = ["Jack Johnson", "Metalica", "Katty Perry", "31 Minutos"]
    @State var complexObject: ComplexObject?
    @State var songs: [SongsResponse.Song]? = []
    
    var body: some View {
        List {
            if complexObject?.state == true {
                Text("El valor del objeto completo cambió")
            }
            ForEach(songs ?? []) { song in
                SongCellView(song: song)
            }
        }
        .navigationTitle("Songs example")
        .task {
            await fetchSongs(artist: artists.randomElement()!)
        }
        .overlay(alignment: .top) {
            if let songs = songs, songs.isEmpty {
                ProgressView()
            }
            if songs == nil {
                Text("Ups algo salió mal\n:(")
                    .font(.athleticOutfit(size: 24))
                    .multilineTextAlignment(.center)
            }
        }
        .refreshable {
            songs = []
            await fetchSongs(artist: artists.randomElement()!)
        }
    }
    
    func fetchSongs(artist: String) async {
        
        songs = await API().fetchSongs(artist: self.artists.randomElement()!)
    }
}

struct SongsView_Previews: PreviewProvider {
    static var previews: some View {
        SongsView()
    }
}
