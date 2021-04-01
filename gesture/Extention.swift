//
//  Extention.swift
//  gesture
//
//  Created by 陳元浚 on 2021/4/1.
//

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


var audioURL = URL(fileURLWithPath: Bundle.main.path(forResource: "Knownobetter", ofType: "mp3")!)
var audioPlayer = AVAudioPlayer()

let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)



func applicationDidFinishLaunching(_ aNotification: Notification) {




    do {
        audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
        audioPlayer.prepareToPlay()
        audioPlayer.volume = 0.2
    } catch {
        print("Sorry, couldn't load the audio file")
    }
}
