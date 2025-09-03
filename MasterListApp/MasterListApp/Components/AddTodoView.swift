//
//  AddTodoView.swift
//  MasterListApp
//
//  Created by Bedirhan Yüksek on 3.09.2025.
//

import SwiftUI

struct AddTodoView: View {
    
    @State private var newTodoTitle = ""
    @State private var newTodoDescription = ""
    
    @State private var isPresented = false
    
    var onAdd: (String, String) -> Void
    
    var borderColor = LinearGradient(colors: [Color.blue.opacity(0.8), Color.purple.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        HStack{
            
            VStack(spacing: 10){
                TextField("Başlık ekleyin...", text: $newTodoTitle)
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(borderColor, lineWidth: 2)
                    )
                if(isPresented) {
                    TextField("Açıklama ekleyin...", text: $newTodoDescription)
                        .padding(8)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(borderColor, lineWidth: 2)
                        )
                }
        }
            
            
            Button(isPresented ? "Kaydet": "Ekle") {
                if(!newTodoTitle.isEmpty){
                    if(isPresented){
                        onAdd(newTodoTitle,newTodoDescription)
                        
                        newTodoTitle = ""
                        newTodoDescription = ""
                        isPresented = false
                    }else{
                        isPresented = true
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(Color.clear)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(borderColor)
                    .stroke(Color.white, lineWidth: 2)
            )
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(8)
            
        }
        .padding()
    }
}

