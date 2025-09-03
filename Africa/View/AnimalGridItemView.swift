//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Wajd on 04/09/2025.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalGridItemView(animal: animals[0])
}
