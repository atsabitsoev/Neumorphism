//
//  LinearGradient+Extensions.swift
//  Neumorphism
//
//  Created by Ацамаз Бицоев on 20.01.2021.
//

import SwiftUI

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
