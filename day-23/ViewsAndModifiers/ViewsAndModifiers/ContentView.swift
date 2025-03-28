//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Nessa on 25/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Dunia hewan!")
                .font(.largeTitle)
//                .blur(radius: 0)
            Text("Selamat datang di dunia hewan!")
            Text("Ini adalah contoh SwiftUI")
            
            Button("Tombol") {
                
            }
        }
        .font(.title)
//        .blur(radius: 5)
    }
}

#Preview {
    ContentView()
}
