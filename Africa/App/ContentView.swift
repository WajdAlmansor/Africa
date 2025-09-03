//
//  ContentView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    @State private var isGridViewActive: Bool = false
    
    @State private var gridLayout: [GridItem] = [ GridItem(.flexible()) ]
    
    @State private var gridColumn: Int = 1
    
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("Grid Number: \(gridColumn)")
        
        //toolbar image
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }//end switch
    }//end func
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
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
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                }//end link
                            }//end loop
                        }//end vgrid
                        .padding(10)
                        .animation(.easeIn)
                    }//end scroll
                }//end if
            }//end group
            
            .navigationBarTitle("Africa", displayMode: .large)
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack{
                        //list
                        Button(action: {
                            isGridViewActive = false
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accent)
                        }
                        
                        //grid
                        Button(action: {
                            isGridViewActive = true
                            gridSwitch()
                        }){
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accent : .primary)
                        }
                    }//end hstack
                }//end toolbar item
            }//end toolbar
        }//end navigation
    }
}

#Preview {
    ContentView()
}
