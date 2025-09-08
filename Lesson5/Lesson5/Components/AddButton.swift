//
//  AddButton.swift
//  Lesson5
//
//  Created by Bedirhan Yüksek on 7.09.2025.
//

import SwiftUI

struct AddButton: View {
    
    var onAdd: () -> Void
    
    var borderColor = LinearGradient(colors: [Color.blue.opacity(0.8), Color.purple.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        
        Button(action: onAdd){
            Text("Ekle")
        }
        .buttonStyle(.borderedProminent)
        .tint(Color .clear)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(borderColor)
        )
        .foregroundStyle(.white)
        .padding(8)
        
    }
}
