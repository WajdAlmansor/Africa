//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Wajd on 03/09/2025.
//

import SwiftUI

struct MapAnnotationView: View {
    
    var location: NationalParkLocation
    
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.accent)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(.accent, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }//end zstack
        .onAppear {
            withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

#Preview {
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    MapAnnotationView(location: locations[0])
}
