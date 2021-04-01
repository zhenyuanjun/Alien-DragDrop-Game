//
//  Music.swift
//  gesture
//
//  Created by 陳元浚 on 2021/4/1.
//

import AVFoundation

var bgQueuePlayer = AVQueuePlayer()

var bgPlayerLooper: AVPlayerLooper!

func setupBgMusic(){
    guard let url = Bundle.main.url(forResource: "Knownobetter", withExtension: "mp3") else {fatalError("cant find sound file")}
    let item = AVPlayerItem(url:url)
    bgPlayerLooper = AVPlayerLooper(player: bgQueuePlayer, templateItem: item)
}
