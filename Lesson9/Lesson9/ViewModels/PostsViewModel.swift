//
//  PostsViewModel.swift
//  Lesson9
//
//  Created by Bedirhan Yüksek on 23.09.2025.
//

import Foundation

@MainActor

class PostsViewModel: ObservableObject {
    
    @Published var posts: [Posts] = []
    @Published var errorMessage: String?
    
    func loadPosts() async {
        do {
            posts = try await APIService.shared.fetchData()
        }catch{
            errorMessage = error.localizedDescription 
        }
    }
}


