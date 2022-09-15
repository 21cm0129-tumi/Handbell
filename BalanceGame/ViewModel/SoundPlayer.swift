//
//  SoundPlayer.swift
//  Handbell
//
//  Created by cmStudent on 2022/09/09.
//


import UIKit
import AVFoundation

// 音源データを読み込み
class SoundPlayer: NSObject {
    
    // プレイヤーの変数
    let pianoCData = NSDataAsset(name: "pianoC")!.data
    var pianoCPlayer: AVAudioPlayer!
    
    let pianoDData = NSDataAsset(name: "pianoD")!.data
    var pianoDPlayer: AVAudioPlayer!
    
    //A ~ G, C2
    func pianoCPlay() {
        do {
            pianoCPlayer = try AVAudioPlayer(data: pianoCData)
            pianoCPlayer.play()
        } catch {
            print("Cでエラー発生！")
        }
    }
    
    
    
    func pianoDPlay(){
        do {
            pianoDPlayer = try AVAudioPlayer(data: pianoDData)
            pianoDPlayer.play()
        } catch {
            print("Dでエラー発生！")
        }
    }
}

