//
//  ContentView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 272)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
                
            }//end list
            .navigationBarTitle("Africa", displayMode: .large)
            .listStyle(.plain)
        }//end navigation
    }
}

#Preview {
    ContentView()
}
