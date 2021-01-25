//
//  ColorfulToggleStyle.swift
//  Neumorphism
//
//  Created by Ацамаз Бицоев on 25.01.2021.
//

import SwiftUI

struct ColorfulToggleStyle<S: Shape>: ToggleStyle {
    private let shape: S
    
    
    init(shape: S) {
        self.shape = shape
    }
    
    
    func makeBody(configuration: Self.Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            configuration.label
                .padding(30)
                .contentShape(Circle())
        }
        .background(
            ColorfulBackground(isHighlighted: configuration.isOn, shape: Circle())
        )
    }
}
