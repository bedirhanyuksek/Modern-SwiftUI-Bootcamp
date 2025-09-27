//
//  CharacterRowList.swift
//  Lesson10
//
//  Created by Bedirhan Yüksek on 26.09.2025.
//

import SwiftUI

struct CharacterRowList: View {
    let character: Character
    @ObservedObject var viewModel: CharactersViewModel
 
    
    var body: some View {
        HStack(spacing:5){
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
            .frame(width: 80, height: 80)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(8)
                
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text(character.name)
                        .font(.headline)
                        .foregroundStyle(.white)
                    Text(character.status)
                        .font(.subheadline)
                        .foregroundStyle(viewModel.getStatusColor(for: character.status))
                    Text(character.gender)
                        .font(.subheadline)
                        .foregroundStyle(viewModel.getGenderColor(for: character.gender))
                }//VStack
                .padding(10)
                
                Spacer()
                Button{
                    viewModel.toggleFavorite(for: character)
                }label:{
                    Image(systemName: viewModel.favoriteCharacters.contains(character.id) ? "heart.fill" : "heart")
                        .font(.system(size: 25))
                        .padding(8)
                        .foregroundStyle(.white)
                }
                .buttonStyle(.plain)
                
                    
            }//HStack
            .background(Color(red:41/255, green:43/255, blue:49/255,))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(width:230,height: 80)
            .padding(8)
            
            
            
            
            
        }//HStack
        .background(Color(red:60/255, green:62/255, blue:67/255,))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        
        
        
        
        
    }
}
