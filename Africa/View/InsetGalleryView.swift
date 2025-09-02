//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//end loop
            }//end hstack
        }//end scroll
    }//end body
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    InsetGalleryView(animal: animals[0])
}
