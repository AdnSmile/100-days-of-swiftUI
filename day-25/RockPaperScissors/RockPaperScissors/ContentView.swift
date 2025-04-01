//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Nessa on 31/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var yourChoice = ""
    @State private var appChoice = ""
    @State private var gameResult = false
    
    @State private var moves = ["Rock", "Paper", "Scissors"]
    
    var body: some View {
        VStack {
//            ForEach(moves, id: \.self) { move in
//                Text(move)
//            }
            
            HStack {
                Button("👊") {
                    
                }
                .font(.system(size: 100))
                
                Button("🤚") {
                    
                }
                .font(.system(size: 100))
                
                Button("✌️") {
                    
                }
                .font(.system(size: 100))
            }
        }
    }
    
    
    
    private func getRandomMove() -> String {
        moves.randomElement() ?? ""
    }
}

#Preview {
    ContentView()
}
