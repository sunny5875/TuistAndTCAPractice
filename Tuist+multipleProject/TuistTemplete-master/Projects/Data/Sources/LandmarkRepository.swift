//
//  LandmarkRepository.swift
//  Data
//
//  Created by 현수빈 on 2023/08/20.
//

import Foundation
import Domain

public class LandmarkRepository {
 
    static var landmarks: [Landmark] = []
    
    public func getLandmark() -> [Landmark] {
        load("landmarkData.json")
    }

    public func load<T: Decodable>(_ filename: String) -> T {
        let data: Data

        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
                fatalError("Couldn't find \(filename) in main bundle.")
        }

        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }

}
