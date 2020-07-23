//
//  ContentView.swift
//  TrafficLight2
//
//  Created by Гордей Гусельников on 23.07.2020.
//  Copyright © 2020 gordeyStudio. All rights reserved.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        switch currentLight {
            case .red: currentLight = .yellow
            case .yellow: currentLight = .green
            case .green: currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                ColorCircle(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                ColorCircle(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                ColorCircle(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                Spacer()
                ChangeColorButton(title: buttonTitle) {
                    self.buttonTitle = "NEXT"
                    self.nextColor()
                }
            }
            .padding()
        }
    }
}
