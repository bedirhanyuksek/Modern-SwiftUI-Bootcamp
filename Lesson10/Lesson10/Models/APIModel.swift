//
//  APIModel.swift
//  Lesson10
//
//  Created by Bedirhan Yüksek on 25.09.2025.
//

import Foundation

struct CharactersResponse: Codable {
    let results: [Character]
}


struct Character: Codable, Identifiable, Hashable {
    
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
}
