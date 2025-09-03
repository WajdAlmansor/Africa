//
//  VideoListItem.swift
//  Africa
//
//  Created by Wajd on 03/09/2025.
//

import SwiftUI

struct VideoListItemView: View {
    
    let video: Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//end zstack
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accent)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }//end vstack
        }//end hstack
    }//end body
}

#Preview {
    let videos: [Video] = Bundle.main.decode("videos.json")
    VideoListItemView(video: videos[0])
}
