//
//  ContentView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 272)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }//end list
            .navigationBarTitle("Africa", displayMode: .large)
        }//end navigation
    }
}

#Preview {
    ContentView()
}
