//
//  SoundPlayer.swift
//  Handbell
//
//  Created by cmStudent on 2022/09/09.
//


import UIKit
import AVFoundation
import AVKit

// 音源データを読み込み
class SoundPlayer: NSObject {
    
    /// プレイヤーの変数　assetsから音を流す方法の残り滓
//    let pianoCData = "pianoC"
//    var pianoCPlayer: AVAudioPlayer!
//
//    let pianoC2Data = "pianoC2"
//    var pianoC2Player: AVAudioPlayer!
//
//    let pianoDData = "pianoD"
//    var pianoDPlayer: AVAudioPlayer!
//
//    let pianoEData = "pianoE"
//    var pianoEPlayer: AVAudioPlayer!
//
//    let pianoFData = "pianoF"
//    var pianoFPlayer: AVAudioPlayer!
//
//    let pianoGData = "pianoG"
//    var pianoGPlayer: AVAudioPlayer!
//
//    let pianoAData = "pianoA"
//    var pianoAPlayer: AVAudioPlayer!
//
//    let pianoBData = "pianoB"
//    var pianoBPlayer: AVAudioPlayer!
    ///-----------------
    
    private var pianoASoundID: SystemSoundID = 0
    private var pianoBSoundID: SystemSoundID = 0
    private var pianoCSoundID: SystemSoundID = 0
    private var pianoC2SoundID: SystemSoundID = 0
    private var pianoDSoundID: SystemSoundID = 0
    private var pianoESoundID: SystemSoundID = 0
    private var pianoFSoundID: SystemSoundID = 0
    private var pianoGSoundID: SystemSoundID = 0
    
    
    override init() {
        
        guard let pianoAUrl = Bundle.main.url(forResource: "pianoA", withExtension: "mp3") else {
            fatalError()
        }
        guard let pianoBUrl = Bundle.main.url(forResource: "pianoB", withExtension: "mp3") else {
            fatalError()
        }
        guard let pianoCUrl = Bundle.main.url(forResource: "pianoC", withExtension: "mp3") else {
            fatalError()
        }
        guard let pianoC2Url = Bundle.main.url(forResource: "pianoC2", withExtension: "mp3") else {
            fatalError()
        }
        guard let pianoDUrl = Bundle.main.url(forResource: "pianoD", withExtension: "mp3") else {
            fatalError()
        }
        guard let pianoEUrl = Bundle.main.url(forResource: "pianoE", withExtension: "mp3") else {
            fatalError()
        }
        guard let pianoFUrl = Bundle.main.url(forResource: "pianoF", withExtension: "mp3") else {
            fatalError()
        }
        guard let pianoGUrl = Bundle.main.url(forResource: "pianoG", withExtension: "mp3") else {
            fatalError()
        }
        
        AudioServicesCreateSystemSoundID(pianoAUrl as CFURL, &pianoASoundID)
        AudioServicesCreateSystemSoundID(pianoBUrl as CFURL, &pianoBSoundID)
        AudioServicesCreateSystemSoundID(pianoCUrl as CFURL, &pianoCSoundID)
        AudioServicesCreateSystemSoundID(pianoC2Url as CFURL, &pianoC2SoundID)
        AudioServicesCreateSystemSoundID(pianoDUrl as CFURL, &pianoDSoundID)
        AudioServicesCreateSystemSoundID(pianoEUrl as CFURL, &pianoESoundID)
        AudioServicesCreateSystemSoundID(pianoFUrl as CFURL, &pianoFSoundID)
        AudioServicesCreateSystemSoundID(pianoGUrl as CFURL, &pianoGSoundID)
        
    }
    
    
    func pianoASoundPlay() { AudioServicesPlayAlertSound(pianoASoundID) }
    func pianoBSoundPlay() { AudioServicesPlayAlertSound(pianoBSoundID) }
    func pianoCSoundPlay() { AudioServicesPlayAlertSound(pianoCSoundID) }
    func pianoC2SoundPlay() { AudioServicesPlayAlertSound(pianoC2SoundID) }
    func pianoDSoundPlay() { AudioServicesPlayAlertSound(pianoDSoundID) }
    func pianoESoundPlay() { AudioServicesPlayAlertSound(pianoESoundID) }
    func pianoFSoundPlay() { AudioServicesPlayAlertSound(pianoFSoundID) }
    func pianoGSoundPlay() { AudioServicesPlayAlertSound(pianoGSoundID) }
    
    
    ///Assetsから音を流す方法の関数　残り滓
    //A ~ G, C2
//    func pianoPlay(pianoAsset: String) {
//        let pianoData = NSDataAsset(name: pianoAsset)!.data
//        var audioPlayer:AVAudioPlayer!
//        do {
//            audioPlayer = try AVAudioPlayer(data: pianoData)
//            audioPlayer.play()
//            print("音がなっているはず")
//        } catch {
//            print("エラー発生！")
//        }
//    }
    
}

