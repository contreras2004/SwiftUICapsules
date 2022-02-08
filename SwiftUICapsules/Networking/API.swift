//
//  API.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 31-01-22.
//

import Foundation
import Alamofire
import UIKit

protocol API {
    func fetchSongs(artist: String) async -> [SongsResponse.Song]?
}

class MockProvider: API {
    func fetchSongs(artist: String) async -> [SongsResponse.Song]? {
        let songs: [SongsResponse.Song]! = JSONHelper.loadJSON(withFile: "Songs", inBundle: Bundle.main.self)
        return songs
    }
}

class AppProvider: API {
    
    enum Endpoint: String, URLConvertible {
        case songs = "https://itunes.apple.com/search?term=%@"
        
        func asURL() throws -> URL {
            URL(string: self.rawValue)!
        }
    }
    
    func fetchSongs(artist: String) async -> [SongsResponse.Song]? {
        let artist = artist.replacingOccurrences(of: " ", with: "+")
        
        let fullUrlString = String(format: Endpoint.songs.rawValue, artist)
        guard let url = URL(string: fullUrlString) else { return nil }
        debugPrint(url)
        do {
            let songsResponse: SongsResponse = try await request(url: url)
            return songsResponse.songs
        } catch(let error){
            debugPrint(error)
            return nil
        }
      
    }
    
    func request<T: Decodable>(url: URL) async throws -> T {
        //try await Task.sleep(nanoseconds: UInt64(2 * Double(NSEC_PER_SEC)))
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(url).responseDecodable(of: T.self) { response in
                debugPrint(response.description)
                switch response.result {
                case .success(let object):
                    continuation.resume(returning: object)
                case .failure(let error):
                    continuation.resume(throwing: error)
                    //continuation.resume(throa) completion(nil)
                }
            }
        }
    }
}
