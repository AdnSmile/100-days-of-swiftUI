//
//  ContentView.swift
//  iExpense
//
//  Created by Nessa on 04/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Personal") {
                    ForEach(expenses.items.filter { $0.type == "Personal" }) { item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            
                            Spacer()
                            Text(item.amount, format: .currency(code: item.currency))
                        }
                    }
                    .onDelete(perform: deletePersonalItems)
                }
                
                Section("Business") {
                    ForEach(expenses.items.filter { $0.type == "Business" }) { item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            
                            Spacer()
                            Text(item.amount, format: .currency(code: item.currency))
                        }
                    }
                    .onDelete(perform: deleteBusinessItems)
                }
                
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    showingAddExpense = true
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func deletePersonalItems(offsets: IndexSet) {
        let personalItems = expenses.items.filter { $0.type == "Personal" }
        for offset in offsets {
            let itemToDelete = personalItems[offset]
            if let indexInOriginal = expenses.items.firstIndex(where: { $0.id == itemToDelete.id}) {
                expenses.items.remove(at: indexInOriginal)
            }
        }
    }
    
    func deleteBusinessItems(offsets: IndexSet) {
        let businessItems = expenses.items.filter { $0.type == "Business" }
        for offset in offsets {
            let itemToDelete = businessItems[offset]
            if let indexInOriginal = expenses.items.firstIndex(where: { $0.id == itemToDelete.id}) {
                expenses.items.remove(at: indexInOriginal)
            }
        }
    }
}

#Preview {
    ContentView()
}
