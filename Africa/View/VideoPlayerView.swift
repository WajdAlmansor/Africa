
import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playeVideo(fileName: videoSelected, fileFormat: "mp4"))
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )//end overlay
        }//end vstack
        .accentColor(.accent)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
    }
}
