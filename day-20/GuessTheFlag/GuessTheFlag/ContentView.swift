//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Nessa on 23/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // cara 1
//        Button("Delete selection") {
//            print("Now deleting...")
//        }
        
        // cara 2
//        Button("Deleting selection", role: .destructive, action: executeDelete)
        
//        VStack {
//            Button("Button 1"){}
//                .buttonStyle(.bordered)
//            
//            Button("Button 2", role: .destructive){}
//                .buttonStyle(.bordered)
//            
//            Button("Button 3"){}
//                .buttonStyle(.borderedProminent)
//                .tint(.indigo)
//            
//            Button("Button 4", role: .destructive){}
//                .buttonStyle(.borderedProminent)
//        }
        
        // custom button style
        Button {
            print("Button was tapped")
        } label: {
            //            Text("Tap me!")
            //                .padding()
            //                .foregroundStyle(.white)
            //                .background(.red)
            
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
        }
        
//        Image(systemName: "pencil.circle")
//            .foregroundStyle(.red)
//            .font(.largeTitle)
        
    }
    
    func executeDelete() {
        print("Now deleting...")
    }
}

#Preview {
    ContentView()
}
