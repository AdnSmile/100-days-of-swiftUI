//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Nessa on 02/07/25.
//

import Foundation
import SwiftUI

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
