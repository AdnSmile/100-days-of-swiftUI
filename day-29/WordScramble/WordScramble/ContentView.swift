//
//  ContentView.swift
//  WordScramble
//
//  Created by Nessa on 03/04/25.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        
        List {
            Text("Static Row")
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static Row")
        }
        
//        List(people, id: \.self) {
//            Text($0)
//        }
        
//        List {
//            Section ("Section 1") {
//                Text("Static row 1")
//                Text("Static row 2")
//            }
//            
//            Section("Section 2") {
//                ForEach(0..<5) {
//                    Text("Dynamic row \($0)")
//                }
//            }
//            
//            Section("Section 3") {
//                Text("Static row 3")
//                Text("Static row 4")
//            }
//        }
//        .listStyle(.grouped)
        
        // if your entire list is made up of dynamic rows
//        List(0..<5) {
//            Text("Dynamic row \($0)")
//        }
    }
}

#Preview {
    ContentView()
}
