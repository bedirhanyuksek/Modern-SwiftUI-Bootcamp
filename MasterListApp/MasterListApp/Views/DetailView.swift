//
//  DetailView.swift
//  MasterListApp
//
//  Created by Bedirhan Yüksek on 3.09.2025.
//

import SwiftUI

struct DetailView: View {
    
    let item : TodoItem
    @ObservedObject var viewModel: TodoViewModel
   
    
    var bgColor = LinearGradient(colors: [Color.blue.opacity(0.2), Color.purple.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing)
    
  
    
    var body: some View {
        
        ZStack{
            
            bgColor
                .ignoresSafeArea()
            
            VStack(spacing:20){
                

                Text(item.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(item.description)
                    .font(.headline)
                
                Image(systemName: viewModel.symbols.randomElement() ?? "circle.fill")
                    
                    .font(.system(size: 100))
                    
                
            }
            .padding()
            .navigationTitle("Detay")
            
        }
        
      
        
        
    }
}

