//
//  ContentView.swift
//  FaceFacts
//
//  Created by OLEKSANDR ISAIEV on 06.01.2024.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Query var people: [Person]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(people, id: \.emailAddress) { person in
                    NavigationLink(value: person) {
                        Text(person.name)
                    }
                }
            }
            .navigationTitle("FaceFacts")
            .navigationDestination(for: Person.self) { person in
                Text(person.name)
            }
        }
    }
}

#Preview {
    ContentView()
}
