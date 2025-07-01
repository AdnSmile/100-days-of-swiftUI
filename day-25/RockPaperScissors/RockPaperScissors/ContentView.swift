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
    @State private var gameResult = ""
    @State private var gameRound = 1
    @State private var score = 0
    @State private var showingScore = false
    
    @State private var moves = ["Rock", "Paper", "Scissors"]
    
    var body: some View {
        VStack {
            
            Text(gameRound<=10 ? "Round \(gameRound)" : "Game Final")
                .font(.title)
                .padding(.vertical, 20)
            
            HStack {
                Button("👊") {
                    yourChoice = "Rock"
                }
                .font(.system(size: 100))
                
                Button("🤚") {
                    yourChoice = "Paper"
                }
                .font(.system(size: 100))
                
                Button("✌️") {
                    yourChoice = "Scissors"
                }
                .font(.system(size: 100))
            }
            
            Text("Your choice is \(yourChoice)")
            
            if !appChoice.isEmpty {
                if appChoice == "Rock" {
                    Text("👊").font(.system(size: 100))
                } else if appChoice == "Paper" {
                    Text("🤚").font(.system(size: 100))
                } else {
                    Text("✌️").font(.system(size: 100))
                }
            }
            
            Text("Computer choice is \(appChoice)")
            
            Spacer()
            
            Button("Redy to play") {
                appChoice = getRandomMove()
                startGame()
            }
            .padding()
            .disabled(yourChoice.isEmpty)
            
            Text(!gameResult.isEmpty ? "Game result is \(gameResult)" : "")
                .font(.title)
            
            Spacer()
        }
        .alert("Your score", isPresented: $showingScore){
            Button("Reset", action: resetGame)
        } message: {
            Text("Your score is \(score)")
        }
    }
    
    private func resetGame() {
        score = 0
        gameRound = 1
        gameResult = ""
        appChoice = ""
        yourChoice = ""
    }
    
    private func startGame() {
        roundCounter()
        
        switch appChoice {
        case "Rock":
            if yourChoice == "Scissors" {
                gameResult = "You Lose!"
            } else if yourChoice == "Paper" {
                gameResult = "You Win!"
            } else {
                gameResult = "Draw!"
            }
            break
        
        case "Paper":
            if yourChoice == "Rock" {
                gameResult = "You Lose!"
            } else if yourChoice == "Scissors" {
                gameResult = "You Win!"
            } else {
                gameResult = "Draw!"
            }
            break
            
        case "Scissors":
            if yourChoice == "Paper" {
                gameResult = "You Lose!"
            } else if yourChoice == "Rock" {
                gameResult = "You Win!"
            } else {
                gameResult = "Draw!"
            }
            break
            
        default:
            gameResult = "Something went wrong!"
            break
        }
        
        scoreCounter()
        
    }
    
    private func roundCounter() {
        gameRound += 1
        
        if gameRound > 10 {
            showingScore = true
        }
    }
    
    private func scoreCounter() {
        if gameResult == "You Win!" {
            score += 1
        } else if gameResult == "You Lose!" {
            score -= 1
        }
    }
    
    private func getRandomMove() -> String {
        moves.randomElement() ?? ""
    }
}

#Preview {
    ContentView()
}
