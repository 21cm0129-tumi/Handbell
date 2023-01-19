//
//  MainView.swift
//  BalanceGame
//
//  Created by cmStudent on 2022/08/26.
//

import SwiftUI

struct MainView: View {
    //    @State private var flag = false     // 表示の切り替えフラグ
    @StateObject var viewModel : MotionViewModel
    
    @State var imageName = "bell.slash"
    
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        
        VStack{
            
            VStack{
                
                Spacer()
                
                Image(systemName: self.imageName )
                            
                Spacer()
  
            }
            .onAppear() {
                // 1.0秒おきに{}内を繰り返す
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {timer in

                    
                    if viewModel.changeImage() == true {
                        self.imageName = viewModel.imageName
                        
                        //音を鳴らす
                    } else {
                        self.imageName = viewModel.imageName
                        //音を止める。鳴らさない
                    }
                    
                    
                }
            }
            
            VStack{
                
                Spacer()
                
                Button {
                    
                } label: {
                    Rectangle()
                        .frame(width: 314.0, height: 70.0)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.blue)
                        .overlay(Text("音色の変更・確認")
                            .foregroundColor(.white))
                    
                }
                
                
                Button {
                    
                } label: {
                    Rectangle()
                        .frame(width: 314.0, height: 70.0)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.blue)
                        .overlay(Text("傾きによる音程の変更・確認")
                            .foregroundColor(.white))
                    
                }
                
            }
        }
        
    }
}

// ----シェイク用----
extension NSNotification.Name {
    public static let deviceDidShakeNotification = NSNotification.Name("DeviceDidShakeNotification")
}
extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        NotificationCenter.default.post(name: .deviceDidShakeNotification, object: event)
    }
}
// ----シェイク用----

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MotionViewModel())
    }
}
