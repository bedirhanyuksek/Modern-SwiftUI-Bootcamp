//
//  NetworkService.swift
//  Lesson10
//
//  Created by Bedirhan Yüksek on 26.09.2025.
//

import Foundation

class NetworkService {
    static let shared = NetworkService()
    
    private init() {}
    
    func fetchCharacters() async throws -> [Character] {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else{
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(CharactersResponse.self, from: data)
        
        return decoded.results
    }
}
