//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Nessa on 25/03/25.
//

import SwiftUI

struct ContentView: View {
    @ViewBuilder var spells: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    var motto1: some View {
        Text("Draco dormiens")
    }
    let motto2 = Text("nunquam titillandus")
    
    var body: some View {
        VStack {
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
            
            spells
        }
    }
}

#Preview {
    ContentView()
}
