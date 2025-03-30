//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Nessa on 25/03/25.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

// extensions on View that make custom modifier easier to use
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

// new view structure
// can have it owns stored properties
struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermark(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 10) {
//            CapsuleText(text: "First")
//                .foregroundStyle(.white)
//            CapsuleText(text: "Second")
//                .foregroundStyle(.yellow)
            
            Text("Hello World")
                .titleStyle()
            
            Color.blue
                .frame(width: 300, height: 200)
                .watermark(with: "Hacking with Swift")
        }
    }
}

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

#Preview {
    ContentView()
}
