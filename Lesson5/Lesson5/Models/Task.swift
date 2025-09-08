//
//  Task.swift
//  Lesson5
//
//  Created by Bedirhan Yüksek on 7.09.2025.
//

import Foundation

struct Task: Identifiable {
    let id: UUID
    var title: String
    var isCompleted: Bool
    
    init(id: UUID = UUID(), title: String, isCompleted: Bool = false) {
            
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
}
