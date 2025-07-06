//
//  RectangleDivider.swift
//  Moonshot
//
//  Created by Nessa on 07/07/25.
//

import SwiftUI

struct RectangleDivider: View {
    
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    RectangleDivider()
}
