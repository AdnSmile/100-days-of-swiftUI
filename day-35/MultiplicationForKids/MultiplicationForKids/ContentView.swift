//
//  ContentView.swift
//  MultiplicationForKids
//
//  Created by Nessa on 06/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedBaseNumber = 0
    @State private var questionAmount = 10
    @State private var questions = []
    
    private let listQuestion = questionsList
    
    let questionAmountList = [5, 10, 15, 20]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker("Choose a base number", selection: $selectedBaseNumber) {
                        ForEach(2..<13) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section("Pick your difficulty") {
                    Picker("Amount of question", selection: $questionAmount) {
                        ForEach(questionAmountList, id: \.self) {
                            Text($0, format: .number)
                        }
                    }
                    .pickerStyle(.palette)
                }
                
                Button("Start Quiz") {
                    questions = getRandomQuestion(selectedBaseNumber, questionAmount)
                    print(questions)
                }
                
            }
            .navigationTitle("Multiple Quizzes")
        }
    }
}

#Preview {
    ContentView()
}
