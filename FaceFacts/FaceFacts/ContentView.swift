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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
