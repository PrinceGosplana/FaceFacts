//
//  EditPersonView.swift
//  FaceFacts
//
//  Created by OLEKSANDR ISAIEV on 07.01.2024.
//

import SwiftData
import SwiftUI

struct EditPersonView: View {
    @Bindable var person: Person
    
    @Query(sort: [
        SortDescriptor(\Event.name),
        SortDescriptor(\Event.location)
    ]) var events: [Event]
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $person.name)
                    .textContentType(.name)
                TextField("Email address", text: $person.emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            
            Section("Where did you meet them?") {
                Picker("Met at", selection: $person.metAt) {
                    Text("Unknown event")
                    
                    if events.isEmpty == false {
                        Divider()
                        
                        ForEach(events) { event in
                            Text(event.name)
                        }
                    }
                }
                Button("Add a new event", action: addEvent)
            }
            
            Section("Notes") {
                // asis here means that textfield will grows vertically, when text became bigger
                TextField("Details about this person", text: $person.details, axis: .vertical)
            }
        }
        .navigationTitle("Edit Person")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func addEvent() {
        
    }
}

//#Preview {
//    EditPersonView()
//}
