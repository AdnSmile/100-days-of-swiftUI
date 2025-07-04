//
//  ContentView.swift
//  ResizingImages
//
//  Created by Nessa on 03/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.example)
            .resizable()
            .scaledToFit()
//            .scaledToFill()
            .containerRelativeFrame(.horizontal) { size, axis in // make image that's 80% the width of the screen
                size * 0.8
            }
    }
}

#Preview {
    ContentView()
}
