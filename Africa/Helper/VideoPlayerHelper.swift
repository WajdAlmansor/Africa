//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Wajd on 03/09/2025.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playeVideo(fileName: String, fileFormat: String) -> AVPlayer {
    
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        
        videoPlayer?.play()
    }
    
    return videoPlayer!
}
