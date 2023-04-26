//
//  PlaySound.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 12/04/23.
//

import AVFAudio

class SoundManager {
    static let instance = SoundManager()
    
    var player : AVAudioPlayer?
    
    func playSound( key : String ){
        guard let url = Bundle.main.url(forResource: key, withExtension: "m4a") else {return}
        
        do {
            
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        }catch let error {
            
            print("error playing sound.\(error.localizedDescription)")
        }
    }
    
    func playSoundQuiz( key : String ){
        guard let url = Bundle.main.url(forResource: key, withExtension: "mp3") else {return}
        
        do {
            
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        }catch let error {
            
            print("error playing sound.\(error.localizedDescription)")
        }
    }
}
