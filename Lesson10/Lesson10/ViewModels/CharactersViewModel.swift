//
//  CharactersViewModel.swift
//  Lesson10
//
//  Created by Bedirhan Yüksek on 26.09.2025.
//

import Foundation
import SwiftUI

@MainActor

class CharactersViewModel: ObservableObject {
    @Published var characters: [Character] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    @Published var favoriteCharacters: Set<Int> = [] {
        didSet {
            saveFavoriteCharacters()
        }
    }
    
    init () {
        loadFavoriteCharacters()
    }
    
    func fetchCharacters() async {
        isLoading = true
        errorMessage = nil
        
        do {
            let result = try await NetworkService.shared.fetchCharacters()
            self.characters = result
        } catch {
            self.errorMessage = error.localizedDescription
        }
        isLoading = false
    }
    
    func toggleFavorite(for character: Character) {
        if favoriteCharacters.contains(character.id) {
            favoriteCharacters.remove(character.id)
        }else{
            favoriteCharacters.insert(character.id)
        }
      }
    
    func getStatusColor(for status: String) -> Color{
        if status == "Alive" {
            return .green
        } else if status == "Dead" {
            return .red
        } else {
            return .gray
        }
    }
    
    func getGenderColor(for gender: String) -> Color{
        if gender == "Female" {
            return .purple
        } else {
            return .blue
        }
    }
    
    private func saveFavoriteCharacters() {
        let ids = Array(favoriteCharacters)
        UserDefaults.standard.set(ids, forKey: "favoriteCharacters")
    }
    
    private func loadFavoriteCharacters() {
        if let ids = UserDefaults.standard.array(forKey: "favoriteCharacters") as? [Int] {
                   self.favoriteCharacters = Set(ids)
               }
    }
    
}
