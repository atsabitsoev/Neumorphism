//
//  ColorfulButtonStyle.swift
//  Neumorphism
//
//  Created by Ацамаз Бицоев on 25.01.2021.
//

import SwiftUI

struct ColorfulButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                ColorfulBackground(isHighlighted: configuration.isPressed, shape: Circle())
            )
            .animation(.none)
    }
}
