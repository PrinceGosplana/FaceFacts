//
//  EditPersonView.swift
//  FaceFacts
//
//  Created by OLEKSANDR ISAIEV on 07.01.2024.
//

import SwiftUI

struct EditPersonView: View {
    @Bindable var person: Person
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $person.name)
                    .textContentType(.name)
            }
        }
        .navigationTitle("Edit Person")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditPersonView()
//}
