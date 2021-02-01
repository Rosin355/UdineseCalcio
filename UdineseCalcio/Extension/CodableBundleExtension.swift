//
//  CodableBundleExtension.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 19/01/21.
//

import Foundation

extension Bundle {
    
    /// Parse json file located locally
    /// - Parameter file: locate the Json file, then create a property for the data, create a decoder, create a property for the decoded data
    /// - Returns: return the ready-to-use data
    
    func decode<T: Codable>(_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return decodedData
    }
}
