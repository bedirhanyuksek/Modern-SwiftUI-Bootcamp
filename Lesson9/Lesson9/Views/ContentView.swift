//
//  ContentView.swift
//  Lesson9
//
//  Created by Bedirhan Yüksek on 23.09.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = PostsViewModel()
    
    var body: some View {
        NavigationStack{
            Group{
                if let errorMessage = viewModel.errorMessage{
                    Text(errorMessage)
                }else{
                    List{
                        ForEach(viewModel.posts){ post in
                            Text(post.title)
                                .font(.headline)
                        }
                    }
                    
                }
                
            }//Group
            .task{
                await viewModel.loadPosts()
            }
            
        }//NavigationStack
        
    }
}

#Preview {
    ContentView()
}
