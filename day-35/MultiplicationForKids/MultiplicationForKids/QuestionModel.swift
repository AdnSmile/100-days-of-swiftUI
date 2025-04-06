//
//  QuestionModel.swift
//  MultiplicationForKids
//
//  Created by Nessa on 06/04/25.
//

import Foundation

struct QuestionModel: Codable, Identifiable {
    let id: Int
    let baseNumber: Int
    let question: String
    let answer: Int
}

let questionsList: [QuestionModel] = {
    var questions = [QuestionModel]()
    var idCounter = 1
    
    // Base number 2-12
    for base in 2...12 {
        // Perkalian 1-20
        for multiplier in 1...20 {
            let question = QuestionModel(
                id: idCounter,
                baseNumber: base,
                question: "\(base) x \(multiplier) = ?",
                answer: base * multiplier
            )
            questions.append(question)
            idCounter += 1
        }
    }
    
    return questions
}()
