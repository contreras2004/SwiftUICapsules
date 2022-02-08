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

struct SongsView: View {
    let provider: API
    @State var songs: [SongsResponse.Song]? = []
    @State var searchText: String = "David Guetta"
    @State var sheetIsPresented = false
    @State var selectedSong: SongsResponse.Song? = nil
    var body: some View {
        List {
            ForEach(songs ?? []) { song in
                SongCellView(song: song).onTapGesture {
                    debugPrint("Song: \(song)")
                    self.selectedSong = song
                }
            }
        }
        .navigationTitle("Songs")
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Artista")
        .onChange(of: searchText, perform: { searchText in
            debugPrint("search: \(searchText)")
            fetchSongs(artist: searchText)
        })
        .task {
            fetchSongs(artist: searchText)
        }
        .sheet(item: $selectedSong) { song in
            DetailView(song: song)
        }
    }
    
    func fetchSongs(artist: String) {
        guard artist != "" else { return }
        Task {
            songs = await provider.fetchSongs(artist: artist)
        }
    }
}

struct SongsView_Previews: PreviewProvider {
    static var previews: some View {
        SongsView(provider: MockProvider())
    }
}
