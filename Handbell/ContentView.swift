//
//  ContentView.swift
//  BalanceGame
//
//  Created by cmStudent on 2022/08/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        MainView(viewModel: MotionViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
