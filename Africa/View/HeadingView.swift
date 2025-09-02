//
//  HeadingView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct HeadingView: View {
    
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accent)
                .imageScale(.large)
            
            
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
}
