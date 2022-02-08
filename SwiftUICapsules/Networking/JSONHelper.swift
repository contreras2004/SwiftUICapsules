//
//  JSONHelper.swift
//  SwiftUICapsules
//
//  Created by m.contreras.selman on 08-02-22.
//


import Foundation

public enum JSONHelper {
    
    public static func loadJSON<Element: Decodable>(withFile fileName: String, inBundle bundle: Bundle) -> Element? {
        var jsonData: Element?
        if let url = bundle.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                jsonData = try decoder.decode(Element.self, from: data)
            } catch {
                debugPrint(error.localizedDescription)
            }
        }
        return jsonData
    }
}
