//
//  TodoRowView.swift
//  MasterListApp
//
//  Created by Bedirhan Yüksek on 3.09.2025.
//

import SwiftUI

struct TodoRowView: View {
    
    let item: TodoItem
    
    var onToggle: () -> Void
    
    var body: some View {
        HStack{
            
            Button{
                onToggle()
            }label: {
                Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(item.isCompleted ? .green : .primary)
            }
            .buttonStyle(.plain)
            
            
            VStack{
                Text(item.title)
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment:.leading)
                    
                
                    
            }
        }
    }
}

