//
//  Note.swift
//  Lesson7
//
//  Created by Bedirhan Yüksek on 14.09.2025.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    var title: String
    var content: String
    var date: Date
    
    init(id: UUID = UUID(), title: String, content: String, date: Date = Date()){
        self.id = id
        self.title = title
        self.content = content
        self.date = date
    }
}
