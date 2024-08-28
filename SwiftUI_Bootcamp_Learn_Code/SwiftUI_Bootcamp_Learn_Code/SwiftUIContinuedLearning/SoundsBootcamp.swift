//
//  SoundsBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/28.
//

import SwiftUI
import AVKit
import AVFoundation

class SoundManage{
    static let instance = SoundManage()
    
    var player: AVAudioPlayer?
    var netPlayer : AVPlayer?
    
    //播放音乐
    func playSound(urlString: String) {
        guard !urlString.isEmpty else {
            return
        }
        
        stopPlaySound()
        
        let url: URL?
        if urlString.contains("www") || urlString.contains("http"){//网络mp3
            url = URL(string: urlString)
            if let url = url {
                let playerItem = AVPlayerItem.init(url: url)
                netPlayer = AVPlayer.init(playerItem: playerItem)
                netPlayer?.play()
            }
        }else{//本地mp3
            url = Bundle.main.url(forResource: urlString, withExtension: ".mp3")
            do {
                if let url = url {
                    player = try AVAudioPlayer(contentsOf: url)
                    player?.play()
                }
            }catch let error {
                print(error)
            }
        }
    }
    
    func stopPlaySound(){
        player?.stop()
        netPlayer?.pause()
    }
}

struct SoundsBootcamp: View {
    var body: some View {
        Button("play local sound1") {
            SoundManage.instance.playSound(urlString: "voip_call")
        }
        
        Button("play local sound2") {
            SoundManage.instance.playSound(urlString: "voip_calling_ring")
        }
        
        Button("play network sound") {
            SoundManage.instance.playSound(urlString: "https://music.163.com/song/media/outer/url?id=1809815407.mp3")
        }
        
        Button("stop play sound") {
            SoundManage.instance.stopPlaySound()
        }
    }
}

#Preview {
    SoundsBootcamp()
}
