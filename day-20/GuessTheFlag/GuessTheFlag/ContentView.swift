//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Nessa on 23/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this important alert!")
        }
    }
}

#Preview {
    ContentView()
}
