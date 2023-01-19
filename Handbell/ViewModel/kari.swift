//
//  kari.swift
//  HandBell
//
//  Created by cmStudent on 2023/01/19.
//

import Foundation
import UIKit
import AVKit

class SoundModel: ObservableObject {
    
  private var correctSoundID: SystemSoundID = 0
  private var wrongSoundID: SystemSoundID = 0
    
  init() {
      
    guard let correctUrl = Bundle.main.url(forResource: "sound-correct", withExtension: "mp3") else {
      fatalError()
    }
      
    guard let wrongUrl = Bundle.main.url(forResource: "sound-wrong", withExtension: "mp3") else {
      fatalError()
    }
      
    AudioServicesCreateSystemSoundID(correctUrl as CFURL, &correctSoundID)
    AudioServicesCreateSystemSoundID(wrongUrl as CFURL, &wrongSoundID)
  }
    
  func correctSoundPlay() {
    AudioServicesPlayAlertSound(correctSoundID)
  }
    
  func wrongSoundPlay() {
    AudioServicesPlayAlertSound(wrongSoundID)
  }
    
}
