//
//  ContentView.swift
//  Neumorphism
//
//  Created by Ацамаз Бицоев on 20.01.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggled = true
    @State private var date = Date()
    @State private var peopleCount = 0
    
    var body: some View {
        ZStack {
            LinearGradient(.darkStart, .darkEnd).ignoresSafeArea(.all)
        
            VStack(spacing: 160) {
                
                Text("Бронирование").font(.largeTitle).bold()
                
                ZStack {
                    Rectangle()
                        .fill(Color.clear)
                        .background(DarkBackground(isHighlighted: false, shape: RoundedRectangle(cornerRadius: 32)))
                        .frame(height: 230)
                        .padding()
                    
                    VStack(alignment: .center, spacing: 44) {
                        DatePicker(selection: $date,
                                   in: Date()...Date(timeIntervalSinceNow: 30*24*60*60),
                                   displayedComponents: [.date, .hourAndMinute]) {}
                            .labelsHidden()
                            .environment(\.locale, Locale(identifier: "ru"))
                        
                        Picker(selection: Binding(get: {
                            peopleCount - 1
                        }, set: { (newValue) in
                            peopleCount = newValue + 1
                        }),
                        label:
                            Text(peopleCount == 0 ? "Выбрать количество персон" : "\(peopleCount) персон")
                            .padding()
                            .background(ColorfulBackground(isHighlighted: peopleCount != 0,
                                                           shape: RoundedRectangle(cornerRadius: 20)))
                            .foregroundColor(.white),
                        content: {
                            ForEach(1..<16) { Text("\($0) персон") }
                        })
                        .pickerStyle(MenuPickerStyle())
                    }
                }
                
                Button(action: {
                    print("Бронь")
                }, label: {
                    Text("Забронировать столик")
                        .foregroundColor(.white)
                        .frame(height: 0)
                })
                .buttonStyle(ColorfulButtonStyle(shape: RoundedRectangle(cornerRadius: 24)))
                .disabled(peopleCount == 0)
                .opacity(peopleCount == 0 ? 0.3
                            : 1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
