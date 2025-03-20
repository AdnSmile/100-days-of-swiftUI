//
//  ContentView.swift
//  WeSplit
//
//  Created by Nessa on 20/03/25.
//

import SwiftUI

struct ContentView: View {
//    @State private var name = ""
    
    let students = ["Notion", "Nessa", "Nabil", "Nour"]
    @State private var selectedStudent = "Nessa"
    
    var body: some View {
//        Form {
//            TextField("Enter your name", text: $name)
//            Text("Your name is \(name).")
//        }
        
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
