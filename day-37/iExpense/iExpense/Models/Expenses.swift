//
//  Expenses.swift
//  iExpense
//
//  Created by Nessa on 02/07/25.
//

import Foundation
import SwiftUI

@Observable
class Expenses {
    var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    // unarchiving the Data object into an array of ExpenseItem objects
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") { // attempt to read whatever is in "Items" as a Data object
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decodedItems
                return
            }
        }
        
        items = []
    }
}
