//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accent)
                    .padding(.horizontal)
                    .padding(.bottom)
                
                //GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }//end group
                .padding(.horizontal)
                
                
                
                //FACTS
                
                //DESCRIPTION
                
                //MAP
                
                //LINK
                
            }//end vstack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//end scroll
    }//end body
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalDetailView(animal: animals[0])
}
