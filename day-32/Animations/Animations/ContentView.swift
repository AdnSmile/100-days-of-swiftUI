//
//  ContentView.swift
//  Animations
//
//  Created by Nessa on 05/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
//            animationAmount += 0.5
        }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//            .blur(radius: (animationAmount - 1) * 3)
//            .animation(.default, value: animationAmount)
//            .animation(.linear, value: animationAmount)
//            .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
            .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(
                        .easeInOut(duration: 1)                .repeatForever(autoreverses: false),
                        value: animationAmount
                    )
            )
            .onAppear{
                animationAmount = 2
            }
//            .animation(
//                .easeInOut(duration: 1)
////                    .delay(1),
////                    .repeatCount(3, autoreverses: true),
//                    .repeatForever(autoreverses: true),
//                value: animationAmount
//            )
    }
}

#Preview {
    ContentView()
}
