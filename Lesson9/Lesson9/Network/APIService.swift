//
//  APIService.swift
//  Lesson9
//
//  Created by Bedirhan Yüksek on 23.09.2025.
//

import Foundation

class APIService{
    static let shared = APIService()
    
    private init(){}
    
    func fetchData() async throws -> [Posts]{
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Posts].self, from: data)
    }
}
