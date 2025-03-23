//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Nessa on 23/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
//            Color.red
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            Color(red: 1, green: 0.8, blue: 0)
//            Color.red
//            Text("Your content")
            
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
            
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
