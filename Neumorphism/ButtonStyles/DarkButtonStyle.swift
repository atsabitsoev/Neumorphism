//
//  DarkButtonStyle.swift
//  Neumorphism
//
//  Created by Ацамаз Бицоев on 20.01.2021.
//

import SwiftUI

struct DarkButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                DarkBackground(isHighlighted: configuration.isPressed, shape: Circle())
            )
            .animation(.none)
    }
}
