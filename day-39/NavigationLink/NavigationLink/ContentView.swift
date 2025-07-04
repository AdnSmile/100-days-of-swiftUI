//
//  ContentView.swift
//  NavigationLink
//
//  Created by Nessa on 04/07/25.
//

// NavigationLink is for showing details about the user’s selection, like you’re digging deeper into a topic.
// sheet() is for showing unrelated content, such as settings or a compose window.

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
//            NavigationLink("Tap Me") {
//                Text("Detail View")
//                    .navigationTitle("SwiftUI")
//            }
            
//            NavigationLink {
//                Text("Detail View")
//            } label: {
//                VStack {
//                    Text("This is the label")
//                    Text("So is this")
//                    Image(systemName: "face.smiling")
//                }
//                .font(.largeTitle)
//            }
            
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
