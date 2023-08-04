//
//  SupplementStores.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 04/08/2023.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - WelcomeElement
struct WelcomeElement: Codable {
    let id: Int
    let name, address, image, shortDesccription: String
    let description: String
    let coordinates: Coordinates

    enum CodingKeys: String, CodingKey {
        case id, name, address, image
        case shortDesccription = "short_desccription"
        case description, coordinates
    }
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let latitude, longtitude: Double
}

typealias Welcome = [WelcomeElement]
