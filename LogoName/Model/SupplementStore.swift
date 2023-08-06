// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let supplementStores = try? JSONDecoder().decode(SupplementStores.self, from: jsonData)

import Foundation
import SwiftUI
import CoreLocation

// MARK: - SupplementStore
struct SupplementStore: Identifiable ,Codable {
    let id: Int
    let name, address, image, shortDesccription: String
    let description: String
    let coordinates: Coordinates
    
    
    var imageName: Image {
        Image(image)
    }
    enum CodingKeys: String, CodingKey {
        case id, name, address, image
        case shortDesccription = "short_desccription"
        case description, coordinates
       
    }
    var locationCoordinate: CLLocationCoordinate2D {
           CLLocationCoordinate2D(
               latitude: coordinates.latitude,
               longitude: coordinates.longitude
           )
       }
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let latitude, longitude: Double
}

typealias SupplementStores = [SupplementStore]


