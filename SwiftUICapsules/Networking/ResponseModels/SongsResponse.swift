//
//  SongsResponse.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 31-01-22.
//

import Foundation

struct SongsResponse: Decodable {
    let resultCount: Int64
    let songs: [Song]
    
    enum CodingKeys: String, CodingKey {
        case resultCount
        case songs = "results"
    }
}

extension SongsResponse {
    struct Song: Decodable, Identifiable {
        let id: Int64
        let trackName: String
        let artistName: String
        let artworkUrl60: URL
        let artworkUrl100: URL
        
        enum CodingKeys: String, CodingKey {
            case id = "trackId"
            case trackName
            case artworkUrl60
            case artworkUrl100
            case artistName
        }
    }
}
