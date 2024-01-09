//
//  Event.swift
//  FaceFacts
//
//  Created by OLEKSANDR ISAIEV on 09.01.2024.
//

import Foundation
import SwiftData

@Model
class Event {
    var name: String
    var location: String
    
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
