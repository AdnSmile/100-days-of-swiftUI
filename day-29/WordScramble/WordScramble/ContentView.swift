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
    
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded the file into a string!
            }
        }
    }
}

#Preview {
    ContentView()
}
