//
//  MotionViewModel.swift
//  BalanceGame
//
//  Created by cmStudent on 2022/08/20.
//

import SwiftUI

class MotionViewModel: ObservableObject {
    
    @Published var imageName = "bell.slash"
    let motionManager = MotionManager.shared
    let soundPlayer = SoundPlayer()
    
    func playPiano(){
        
    }
    
    func changeImage() -> Bool {
        
        motionManager.startQueuedUpdates()
        
        if motionManager.shakeFlag == true {
            //スマホが振られたら音を鳴らす
            
            switch motionManager.gravity {
                //switchで鳴らす音を指定する
            case 1:
                print("1")
                soundPlayer.pianoASoundPlay()
                break
            case 2:
                print("2")
                
                soundPlayer.pianoBSoundPlay()
                break
            case 3:
                print("3")
                soundPlayer.pianoCSoundPlay()
                break
            case 4:
                print("4")
                soundPlayer.pianoC2SoundPlay()
                break
            case 5:
                print("5")
                soundPlayer.pianoDSoundPlay()
                break
            case 6:
                print("6")
                soundPlayer.pianoESoundPlay()
                break
            case 7:
                print("7")
                soundPlayer.pianoFSoundPlay()
                break
            case 8:
                print("8")
                soundPlayer.pianoGSoundPlay()
                break
            case 0:
                print("0")
                break
                
                
            default:
                break
            }
            
            imageName = "bell"
            
            return true
            
        } else {
            imageName = "bell.slash"
            return false
        }
    }
    
    //            print("シェイクしたよ")
    //            viewModel.isShakeFlag = true
    //            viewModel.changeImage()
    //            print(viewModel.isShakeFlag)
    //
    //            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
    //                print("1秒経ちました。")
    //                viewModel.isShakeFlag = false
    //                viewModel.changeImage()
    //                print(viewModel.isShakeFlag)
    //
    //            }
    
    
    
}
