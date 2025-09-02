//
//  AnimalListItemModel.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
