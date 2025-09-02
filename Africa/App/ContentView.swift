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
                    NavigationLink(destination: AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    }//end link
                }//end loop
                
            }//end list
            .navigationBarTitle("Africa", displayMode: .large)
            .listStyle(.plain)
        }//end navigation
    }
}

#Preview {
    ContentView()
}
