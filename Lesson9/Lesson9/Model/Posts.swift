//
//  Posts.swift
//  Lesson9
//
//  Created by Bedirhan Yüksek on 23.09.2025.
//

import Foundation

struct Posts: Codable, Identifiable {
    
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
}
