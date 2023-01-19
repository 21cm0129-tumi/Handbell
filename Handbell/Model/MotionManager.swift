//
//  MotionManager.swift
//  BalanceGame
//
//  Created by cmStudent on 2022/08/20.
//

import Foundation
import CoreMotion

final class MotionManager {
    
    
    var baranceJadge : Bool = true
    var shakeFlag = false
    
    static let shared: MotionManager = .init()
    private let motion = CMMotionManager()
    private let queue = OperationQueue()
    //振った時の判定レンジ
    private let xLenge = -0.3 ... 0.3 //この範囲内は振った判定に入らない
    private let zLenge = -0.3 ... 0.3
    
    var gravity = 0
    
    //傾きの判定をするクロージャ
    let jadgedGravity = {(x:Double, z:Double) -> Int in
        if (-1.2 ... -0.8).contains(x) && (-0.2 ... 0.2).contains(z){
            //1
            return 1
            
        } else if (-0.9 ... -0.4).contains(x) && (-0.9 ... -0.4).contains(z) {
            //2
            return 2
            
        } else if (-0.2 ... 0.2).contains(x) && (-1.2 ... -0.8).contains(z) {
            //3
            return 3
            
        } else if (0.5 ... 0.9).contains(x) && (-0.9 ... -0.5).contains(z) {
            //4
            return 4
            
        } else if (0.8 ... 1.2).contains(x) && (-0.2 ... 0.2).contains(z) {
            //5
            return 5
            
        } else  if (0.5 ... 0.9).contains(x) && (0.5 ... 0.9).contains(z) {
            //6
            return 6
            
        } else if (-0.1 ... 0.1).contains(x) && (0.9 ... 1.1).contains(z) {
            //7
            return 7
            
        } else  if (-1.0 ... -0.4).contains(x) && (0.4 ... 1.0).contains(z) {
            //8
            return 8
            
        } else {
            //角度が取れない場合は画面が上に向く3の値を返すか、音を鳴らさないという0の値を返す
            //UI的にどっちにすべきかな
            return 0
            
        }
                
    }


    private init(){}
    
    func startQueuedUpdates(){
        
        guard motion.isDeviceMotionAvailable else { return }
        
        self.motion.deviceMotionUpdateInterval = 0.3
        
        self.motion.showsDeviceMovementDisplay = true
        
        motion.startDeviceMotionUpdates(to: self.queue) { data, error in
            
            if let validData = data {
                
                let x = validData.userAcceleration.x
                let y = validData.userAcceleration.y
                let z = validData.userAcceleration.z
                
                let gX = validData.gravity.x
                let gY = validData.gravity.y
                let gZ = validData.gravity.z
                

//                    print("x:\(x)")
//                    print("y:\(y)")
//                    print("z:\(z)")
                
//                print("gX:\(gX)")
//                print("gY:\(gY)")
//                print("gZ:\(gZ)")
                
               // print("重力:\(self.gravity(gX,gZ))")
                
//                print("shakeX:\(x)")
//                print("shakeY:\(y)")
//                print("shakeZ:\(z)")
                
                self.gravity = self.jadgedGravity(gX,gZ)

                
                if !(self.zLenge.contains(z) ){
                    
                    print("z:\(z)")
                    print("重力:\(self.gravity)")

                    self.shakeFlag = true
                    
                } else {
                    self.shakeFlag = false
                    
                }
                
                
                //x = サイドボタンがある面をつまんで内カメラやホームボタンあたりを押し込み回転させる🎠
                // roll電源ボタンから見て反時計で＋
                //y = ケーブル差し込み口とその反対の端末上部をつまんで画面の左右の端を押し込み回転🎠
                // pitch上から見て反時計で＋
                //z = 画面と背面をつまんで回転させる。スマホの縦持ち横持ちと同じ回転🎠
                // yaw反時計回りで+
                
                
            }
            
        }
        
    }
    
}
