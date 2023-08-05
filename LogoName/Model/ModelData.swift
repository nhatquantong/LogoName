//
//  ModelData.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 04/08/2023.
//




 import Foundation
 import CoreLocation

 var supplementstores = decodeJsonFromJsonFile(jsonFileName: "supplementstores.json")

 // How to decode a json file into a struct
 func decodeJsonFromJsonFile(jsonFileName: String) -> [SupplementStore] {
     if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
         if let data = try? Data(contentsOf: file) {
             do {
                 let decoder = JSONDecoder()
                 let decoded = try decoder.decode([SupplementStore].self, from: data)
                 return decoded
             } catch let error {
                 fatalError("Failed to decode JSON: \(error)")
             }
         }
     } else {
         fatalError("Couldn't load \(jsonFileName) file")
     }
     return [ ] as [SupplementStore]
 }
 
