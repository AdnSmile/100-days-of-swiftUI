//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Nessa on 23/03/25.
//

import SwiftUI

struct FlagImage: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

struct BlueText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.weight(.semibold))
            .foregroundStyle(.blue)
    }
}

extension View {
    func blueText() -> some View {
        modifier(BlueText())
    }
}

struct ContentView: View {
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score: Int = 0
    @State private var gameLevel: Int = 0
    @State private var isFinalRound = false
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var animationAmount = [0.0, 0.0, 0.0]
    @State private var selectedButtonIndex: Int?
    
    var body: some View {
        
        ZStack {
//            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        
                        Text(countries[correctAnswer])
                            .blueText()
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            withAnimation {
                                selectedButtonIndex = number
                                animationAmount[number] += 360
                                flagTapped(number)
                            }
                        } label: {
                            FlagImage(imageName: countries[number])
                        }
                        .rotation3DEffect(
                            .degrees(animationAmount[number]),
                            axis: (x: 0, y: 1, z: 0)
                        )
                        .rotation3DEffect(
                            .degrees((selectedButtonIndex == nil || selectedButtonIndex == number) ? 0 : 360),
                            axis: (x: 1, y: 0, z: 0)
                        )
                        .opacity((selectedButtonIndex == nil || selectedButtonIndex == number) ? 1 : 0.25)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
        .alert("Final Score", isPresented: $isFinalRound) {
            Button("Continue", action: reset)
        } message: {
            Text("Your final score is \(score)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct."
            score+=1
        } else {
            scoreTitle = "Wrong! That’s the flag of \(countries[number])"
        }
        
        gameLevel += 1
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        selectedButtonIndex = nil
        checkFinalRound()
    }
    
    func checkFinalRound() {
        if gameLevel == 8 {
            isFinalRound = true
        }
    }
    
    //
    
    func reset() {
        isFinalRound = false
        gameLevel = 0
        score = 0
    }
}

#Preview {
    ContentView()
}
