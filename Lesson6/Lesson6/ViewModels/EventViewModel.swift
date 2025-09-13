//
//  EventViewModel.swift
//  Lesson6
//
//  Created by Bedirhan Yüksek on 13.09.2025.
//

import Foundation
import SwiftUI

class EventViewModel: ObservableObject {
    
    @Published var events: [Event] = [
        Event(title: "Arkadaşın Doğum Günü", date: Date().addingTimeInterval(60 * 60 * 24 * 3), type: .birthday, hasReminder: true),
        Event(title: "Tatil Planı", date: Date().addingTimeInterval(86400), type: .holiday, hasReminder: false),
        Event(title: "Ekip Toplantısı", date: Date().addingTimeInterval(60*60*24*60), type: .meeting, hasReminder: true)
    ]
    
    func toggleReminder(for event: Event){
        if let index = events.firstIndex(where: { $0.id == event.id }) {
            events[index].hasReminder.toggle()
        }
    }
    
    func addEvent(title: String, date: Date, type: EventType, hasReminder: Bool){
        let newEvent = Event(title: title, date: date, type: type, hasReminder: hasReminder)
        events.append(newEvent)
    }
    
    func deleteEvent(event: Event){
        events.removeAll {$0.id == event.id}
    }
    
}
