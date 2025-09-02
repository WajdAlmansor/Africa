//
//  CoverImageView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPRTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    
    //MARK: - BODY
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }//end loop
        }//end tabview
        .tabViewStyle(PageTabViewStyle())
    }//end body
}

//MARK: - PREVIEW
#Preview {
    CoverImageView()
}
