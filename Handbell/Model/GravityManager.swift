//
//  GravityManager.swift
//  Handbell
//
//  Created by cmStudent on 2022/09/06.
//

import Foundation
import CoreMotion
import UIKit


 /*
 全８パターン
 電源ボタン上1
 x:-0.99, y:0.03 ~ -0.001, z: 0.10 ~ -0.10
 
 電源ボタン2時2
 x:0.-0.70, y:-0.05, z: -0.70
 
 3時（画面上）3
 x:0.03, y:-0.03, z: -0.99
 
 4
 x:0.70, y:0.03, z: -0.70
 
 6  5
 x:0.99, y:-0.01, z: -0.05
 
 8  6
 x:0.70, y:0.03, z: 0.70
 
 9 (画面下） 7
 x:0.00, y:-0.01, z: 0.99
 
 10  8
 x:-0.70, y:0.03, z: 0.70

 */


let gravity = {(x:Double, z:Double) -> Int in
    if (-1.1 ... -0.9).contains(x) && (-0.1 ... 0.1).contains(z){
        //1
        return 1
    } else if (-0.8 ... -0.6).contains(x) && (-0.8 ... -0.6).contains(z) {
        //2
        return 2
    } else if (-0.1 ... 0.1).contains(x) && (-1.1 ... -0.9).contains(z) {
        //3
        return 3
    } else if (0.6 ... 0.8).contains(x) && (-0.8 ... -0.6).contains(z) {
        //4
        return 4
    } else if (0.9 ... 1.1).contains(x) && (-0.1 ... 0.1).contains(z) {
        //5
        return 5
    } else  if (0.6 ... 0.8).contains(x) && (0.6 ... 0.8).contains(z) {
        //6
        return 6
    } else if (-0.1 ... 0.1).contains(x) && (0.9 ... 1.1).contains(z) {
        //7
        return 7
    } else  if (-0.8 ... -0.6).contains(x) && (0.6 ... 0.8).contains(z) {
        //8
        return 8
    } else {
        //角度が取れない場合は画面が上に向く3の値を返す
        return 3
        
    }
            
}

