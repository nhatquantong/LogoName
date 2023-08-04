//
//  ModelData.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 04/08/2023.
//

import Foundation

func decodeJsonFromJsonFile(jsonFileName: String) -> [SupplementStores] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([SupplementStores].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [SupplementStores]
}

var supplementStores = decodeJsonFromJsonFile(jsonFileName: "supplementstores.json")
