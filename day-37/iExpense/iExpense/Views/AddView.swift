//
//  AddView.swift
//  iExpense
//
//  Created by Nessa on 02/07/25.
//

import SwiftUI

struct AddView: View {
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    @State private var currencySelection = "IDR"
    
    @Environment(\.dismiss) var dismiss
    
    var expenses: Expenses
    let types = ["Business", "Personal"]
    let currency = ["IDR", "USD", "JPY"]
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                
                Picker("Currency", selection: $currencySelection) {
                    ForEach(currency, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", value: $amount, format: .number)
                    .keyboardType(.numberPad)
            }
            .navigationTitle("Add New Expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, currency: currencySelection, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddView(expenses: Expenses())
}
