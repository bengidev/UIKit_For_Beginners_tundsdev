//
//  AudioManagerViewModel.swift
//  Football Chants
//
//  Created by Bambang Tri Rahmat Doni on 15/11/23.
//

import AVKit
import Foundation

final class AudioManagerViewModel {
    private var audioPlayer: AVAudioPlayer?
    
    func playSound(from team: Team) -> Void {
        if team.isPlaying {
            audioPlayer?.stop()
        } else {
            guard let path = Bundle.main.path(forResource: "\(team.id.chantFile)", ofType: "mp3") else { return }
            
            let url: URL
            if #available(iOS 16.0, *) {
                url = URL(filePath: path)
            } else {
                url = URL(fileURLWithPath: path)
            }
            
            audioPlayer = try? AVAudioPlayer(contentsOf: url)
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.play()
        }
    }
    
}
