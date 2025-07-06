//
//  Astronaut.swift
//  Moonshot
//
//  Created by Nessa on 05/07/25.
//

import Foundation

struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}

struct CrewMember {
    let role: String
    let astronaut: Astronaut
}

