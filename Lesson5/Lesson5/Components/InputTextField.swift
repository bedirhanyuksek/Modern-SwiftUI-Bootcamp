//
//  InputTextField.swift
//  Lesson5
//
//  Created by Bedirhan Yüksek on 7.09.2025.
//

import SwiftUI

struct InputTextField: View {
    
    @Binding var text: String
    
    var borderColor = LinearGradient(colors: [Color.blue.opacity(0.8), Color.purple.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        TextField("Yeni görev ekle", text: $text)
            .padding(8)
            
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(borderColor, lineWidth: 2))
    }
}


