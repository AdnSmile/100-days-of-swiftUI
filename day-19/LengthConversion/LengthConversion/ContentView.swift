//
//  ContentView.swift
//  LengthConversion
//
//  Created by Nessa on 22/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputNumber = 0.0
    @State private var inputUnit = "kilometer"
    @State private var outputUnit = "meter"
    @FocusState private var amountIsFocused: Bool
    
    let unit = ["meter", "kilometer", "feet", "yard", "mile"]
    
    var converstionRate: Double {
        let fromValue = Double(inputNumber)
        
        if let unitValue = unitConversion[inputUnit]?[outputUnit] {
            return fromValue * unitValue
        }
        
        return 0.0
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("From") {
                    Picker("Input Unit", selection: $inputUnit) {
                        ForEach(unit, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    TextField("Input", value: $inputNumber, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                
                Section("To") {
                    Picker("Input Unit", selection: $outputUnit) {
                        ForEach(unit, id: \.self) {
                            Text($0)
                        }
                    }

                    Text(converstionRate, format: .number)
                }
            }
            .navigationTitle("Lenght Conversion")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
            
            Button("Swap") {
                let tempUnit = inputUnit
                inputUnit = outputUnit
                outputUnit = tempUnit
            }
        }
    }
}

#Preview {
    ContentView()
}
