//
//  InsetFactView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//end tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        }//end groupbox
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    InsetFactView(animal: animals[0])
}
