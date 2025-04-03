//
//  ContentView.swift
//  WordScramble
//
//  Created by Nessa on 03/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hellow nessa!")
    }
    
    func testStrings() {
//        let input = """
//            a
//            b
//            c
//            """
//        let letters = input.components(separatedBy: "\n")
//        let letter = letters.randomElement()
//        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

#Preview {
    ContentView()
}
