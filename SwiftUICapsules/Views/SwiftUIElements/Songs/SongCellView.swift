//
//  SongCellView.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 31-01-22.
//

import SwiftUI
import Kingfisher

struct SongCellView: View {
    @State var song: SongsResponse.Song
    var body: some View {
        HStack {
            KFImage(URL(string: song.artworkUrl60))
                .resizable()
                .frame(width: 60, height: 60, alignment: .leading)
            Text("Song: \(song.trackName)")
                .foregroundColor(Color("textColor"))
        }
    }
}

struct SongCellView_Previews: PreviewProvider {
    static var previews: some View {
        SongCellView(song: SongsResponse.Song(id: 1, trackName: "Test", artworkUrl60: ""))
    }
}

