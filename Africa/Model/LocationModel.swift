//
//  LocationModel.swift
//  Africa
//
//  Created by Wajd on 03/09/2025.
//

import SwiftUI
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    // Computed property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
