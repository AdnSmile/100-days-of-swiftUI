//
//  ContentView.swift
//  BetterRest
//
//  Created by Nessa on 01/04/25.
//

import SwiftUI

struct ContentView: View {
//    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
//        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        
        DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
            .labelsHidden()
        
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
        
        // showing neatly formatted time
        Text(Date.now, format: .dateTime.hour().minute())
        Text(Date.now, format: .dateTime.day().month().year())
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    
    func exampleDate() {
        // choosing default time
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? .now
        
        // reading the hour and minute
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

#Preview {
    ContentView()
}
