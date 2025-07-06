//
//  CrewMemberCard.swift
//  Moonshot
//
//  Created by Nessa on 07/07/25.
//

import SwiftUI

struct CrewMemberCard: View {
    let crewMember: CrewMember
    
    var body: some View {
        HStack {
            Image(crewMember.astronaut.id)
                .resizable()
                .frame(width: 104, height: 72)
                .clipShape(.capsule)
                .overlay(
                    Capsule()
                        .strokeBorder(.white, lineWidth: 1)
                )
            
            VStack(alignment: .leading) {
                Text(crewMember.astronaut.name)
                    .foregroundStyle(.white)
                    .font(.headline)
                Text(crewMember.role)
                    .foregroundStyle(.white.opacity(0.5))
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    let astronaut = Astronaut(id: "chaffee", name: "Roger B. Chaffee", description: "")
    return CrewMemberCard(crewMember: CrewMember(role: "Test", astronaut: astronaut))
        .preferredColorScheme(.dark)
}
