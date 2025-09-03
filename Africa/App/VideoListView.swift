//
//  VideoListView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                    }
                }//end loop
            }//end list
            .listStyle(InsetListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button (action: {
                        // Suffle videos
                        videos.shuffle()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                            .padding()
                    }
                }
            }
        }// end navigation
    }
}

#Preview {
    VideoListView()
}
