//
//  Event.swift
//  Lesson6
//
//  Created by Bedirhan Yüksek on 12.09.2025.
//

import Foundation

enum EventType: String, CaseIterable, Identifiable {
    case birthday = "Doğum Günü"
    case meeting = "Toplantı"
    case holiday = "Tatil"
    case sport = "Spor"
    case other = "Diğer"
    
    var id: String { rawValue }
}

struct Event: Identifiable {
    
    let id: UUID
    var title: String
    var date: Date
    var type: EventType
    var hasReminder: Bool
    
    init(id: UUID = UUID(), title: String, date: Date, type: EventType, hasReminder: Bool = false) {
        
        self.id = id
        self.title = title
        self.date = date
        self.type = type
        self.hasReminder = hasReminder
        
    }
    
    
}
