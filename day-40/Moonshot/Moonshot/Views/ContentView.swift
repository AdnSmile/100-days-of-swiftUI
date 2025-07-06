//
//  ContentView.swift
//  Moonshot
//
//  Created by Nessa on 05/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGrid = true
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
        
    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .toolbar {
                Toggle("Show Grid", isOn: $showingGrid)
                    .toggleStyle(.switch)
            }
        }
    }
    
}

struct GridLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]

    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink{
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        MisionCard(mission: mission)
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
        .navigationTitle("Moonshot")
        .background(.darkBackground)
        .preferredColorScheme(.dark)
    }
}

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink{
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    MisionCard(mission: mission)
                }
            }
            .padding([.horizontal, .bottom])
            .listRowBackground(Color.darkBackground)
        }
        .listStyle(.plain)
        .navigationTitle("Moonshot")
        .background(.darkBackground)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
