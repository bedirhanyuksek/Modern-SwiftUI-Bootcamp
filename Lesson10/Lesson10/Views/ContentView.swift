//
//  ContentView.swift
//  Lesson10
//
//  Created by Bedirhan Yüksek on 25.09.2025.
//

import SwiftUI

struct ContentView: View {
@StateObject private var viewModel = CharactersViewModel()
    
    var body: some View {
    
            
            NavigationStack {
                
                    Group{
                        if let error = viewModel.errorMessage{
                            Text(error)
                        }else if viewModel.isLoading {
                            ProgressView("Yükleniyor...")
                        }else{
                            List(viewModel.characters){ character in
                                NavigationLink(destination:CharacterDetailView(character:character,viewModel: viewModel)){
                                    CharacterRowList(character: character,viewModel: viewModel)
                                        
                                }
                                .listRowBackground(Color(red:41/255, green:43/255, blue:49/255,))
                                
                                
                            }//List
                            .scrollContentBackground(.hidden)
                            
                            .background(Color.clear)
                            
                            
                        }
                    }//Group
                    
                    .task{
                        await viewModel.fetchCharacters()
                    }
                    .background(Color(red:41/255, green:43/255, blue:49/255,))
                  
                
            }//NavigationStack
            
            
      
        
    }
}

#Preview {
    ContentView()
}




