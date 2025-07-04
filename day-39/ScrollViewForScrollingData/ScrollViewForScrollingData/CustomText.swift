//
//  CustomText.swift
//  ScrollViewForScrollingData
//
//  Created by Nessa on 03/07/25.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

//#Preview {
//    CustomText()
//}
