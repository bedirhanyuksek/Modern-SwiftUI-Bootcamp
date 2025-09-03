//
//  TodoItem.swift
//  MasterListApp
//
//  Created by Bedirhan Yüksek on 3.09.2025.
//

import Foundation

struct TodoItem: Identifiable{
    let id: UUID
    var title: String
    var description: String
    var isCompleted: Bool
    
    init(id: UUID = UUID(), title: String, description: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.description = description
        self.isCompleted = isCompleted
    }
    
}

