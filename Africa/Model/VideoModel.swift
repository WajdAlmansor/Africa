//
//  VideoModel.swift
//  Africa
//
//  Created by Wajd on 03/09/2025.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
