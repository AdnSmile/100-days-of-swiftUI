//
//  ContentView.swift
//  BetterRest
//
//  Created by Nessa on 01/04/25.
//

import CoreML
import SwiftUI

struct ContentView: View {
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? .now
    }
    
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeAmount = 0
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section("When do you want to wake up?") {
//                    Text("When do you want to wake up?")
//                        .font(.headline)
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                        .onChange(of: wakeUp) {
                            calculateBedTime()
                        }
                }
                
                Section("Desired amount of sleep") {
//                    Text("Desired amount of sleep")
//                        .font(.headline)
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                        .onChange(of: sleepAmount) {
                            calculateBedTime()
                        }

                }
                
                Section("Daily coffee intake") {
//                    Text("Daily coffee intake")
//                        .font(.headline)
//                    Stepper(coffeAmount == 1 ? "1 cup" : "\(coffeAmount) cup(s)", value: $coffeAmount, in: 1...20)
//                    Stepper("^[\(coffeAmount) cup](inflect: true)", value: $coffeAmount, in: 1...20)
                    
                    Picker("Number of cup", selection: $coffeAmount) {
                        ForEach(1..<20) {
                            Text("^[\($0) cup](inflect: true)")
                        }
                    }
                    .pickerStyle(.navigationLink)
                    .onChange(of: coffeAmount) {
                        calculateBedTime()
                    }

                }
                
                Section("Recomendated bedtime") {
                    Text(alertMessage)
                        .font(.headline)
                }
            }
            .navigationTitle("BetterRest")
//            .toolbar {
//                Button("Calculate", action: calculateBedTime)
//            }
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("Ok") {}
            } message: {
                Text(alertMessage)
            }
        }
    }
    
    func calculateBedTime() {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            
            alertTitle = "Your ideal bedtime is..."
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
        }
        
//        showingAlert = true
    }
}

#Preview {
    ContentView()
}
