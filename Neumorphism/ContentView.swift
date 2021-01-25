//
//  ContentView.swift
//  Neumorphism
//
//  Created by Ацамаз Бицоев on 20.01.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggled = false
    
    var body: some View {
        ZStack {
            LinearGradient(.darkStart, .darkEnd)
            
            VStack(spacing: 40) {
                Button(action: {
                    print("tap")
                }, label: {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.white)
                })
                .buttonStyle(DarkButtonStyle())
                
                Toggle(isOn: $isToggled) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.white)
                }
                .toggleStyle(ColorfulToggleStyle())
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
