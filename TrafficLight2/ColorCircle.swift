//
//  ColorCircle.swift
//  TrafficLight2
//
//  Created by Гордей Гусельников on 23.07.2020.
//  Copyright © 2020 gordeyStudio. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        Color(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 50)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.2)
    }
}
