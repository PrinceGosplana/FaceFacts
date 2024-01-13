//
//  EditEventView.swift
//  FaceFacts
//
//  Created by OLEKSANDR ISAIEV on 11.01.2024.
//

import SwiftUI

struct EditEventView: View {
    @Bindable var event: Event
    
    var body: some View {
        Form {
            TextField("Name of event", text: $event.name)
            TextField("Location", text: $event.location)
        }
        .navigationTitle("Edit Event")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    do {
        let preview = try Preview()
        
        return EditEventView(event: preview.event)
            .modelContainer(preview.container)
    } catch {
        return Text("Failed to create preview: \(error.localizedDescription)")
    }
}
