//
//  GalleryView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct GalleryView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    @State private var selectedAnimal: String = "lion"
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    
    @State private var gridColum: Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColum))
    }
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                //MARK: - IMAGE
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.white, lineWidth: 8))
                
                //MARK: - SLIDER
                Slider(value: $gridColum, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColum) {
                        gridSwitch()
                    }

                
                //MARK: - GRID
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    }//end loop
                }//end grid
                .animation(.easeIn)
                .onAppear(perform: {
                    gridSwitch()
                })
            }//end vstack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }//end scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
