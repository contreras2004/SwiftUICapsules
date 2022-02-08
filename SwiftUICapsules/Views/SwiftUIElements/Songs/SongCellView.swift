//
//  SongCellView.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 31-01-22.
//

import SwiftUI
import Kingfisher

protocol SongCellDelegate: AnyObject{
    func didTap(song: SongsResponse.Song)
}

struct SongCellView: View, Identifiable {
    let id = UUID()
    weak var delegate: SongCellDelegate?
    @State var song: SongsResponse.Song
    @State var rotating = false
    @State var showingPopover = false
    var body: some View {
        HStack {
            KFImage.url(song.artworkUrl60)
                .placeholder {
                    Image("capsule")
                        .resizable()
                        .scaledToFit()
                }
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60, alignment: .leading)
                .padding(5)
            Text(song.trackName)
        }
    }
}

/*struct SongCellView_Previews: PreviewProvider {
    static var previews: some View {
        SongCellView(song: SongsResponse.Song(id: 1, trackName: "Test", artworkUrl60: URL(string: "capsule")!))
    }
}*/

