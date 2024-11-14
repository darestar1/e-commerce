//
//  CodableBundle.swift
//  e-commerce
//
//  Created by Yasin Karasu on 14.11.2024.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file:String)-> T {
//        locate json
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
//        create propert for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
//create decoder for data
        let decoder = JSONDecoder()
//creater property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else { fatalError("Failed to decode \(file) from bundle")}
//return ready-use-data
       return decodedData
        
    }
}
