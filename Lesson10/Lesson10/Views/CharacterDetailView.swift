//
//  CharacterDetailView.swift
//  Lesson10
//
//  Created by Bedirhan Yüksek on 27.09.2025.
//

import SwiftUI

struct CharacterDetailView: View {
    let character: Character
   @ObservedObject var viewModel: CharactersViewModel
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(red:41/255, green:43/255, blue:49/255,)
                .ignoresSafeArea()
            
            VStack(spacing:30){
                AsyncImage(url: URL(string: character.image)) {phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFill()
                    }
                    else {
                        ProgressView()
                    }
                }
                .frame(width: 300, height: 300)
                .cornerRadius(20)
                .padding()
                
                
                
                Text(character.name)
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color(red:41/255, green:43/255, blue:49/255,))
                    .cornerRadius(20)
                    .padding(.horizontal)
                
                Text(character.species)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color(red:41/255, green:43/255, blue:49/255,))
                    .cornerRadius(20)
                
                Text(character.gender)
                    .font(.caption)
                    .foregroundStyle(viewModel.getGenderColor(for: character.gender))
                    .padding()
                    .background(Color(red:41/255, green:43/255, blue:49/255,))
                    .cornerRadius(20)
                
                Text(character.status)
                    .font(.caption)
                    .foregroundStyle(viewModel.getStatusColor(for: character.status))
                    .padding()
                    .background(Color(red:41/255, green:43/255, blue:49/255,))
                    .cornerRadius(20)
                    .padding(.bottom,20)
            }
            .background(Color(red:60/255, green:62/255, blue:67/255,))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
        }
        
    }
}



