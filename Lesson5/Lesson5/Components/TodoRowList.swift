//
//  TodoRowList.swift
//  Lesson5
//
//  Created by Bedirhan Yüksek on 7.09.2025.
//

import SwiftUI

struct TodoRowList: View {
    
    let task: Task
    
    var onToggle: () -> Void
    
    var body: some View{
        HStack{
            Button{
                onToggle()
            }label: {
                Image(systemName: task.isCompleted ? "checkmark.square.fill" : "square")
                    .foregroundStyle(task.isCompleted ? .green: .primary)
                    
            }
            Text(task.title)
            
        }
        
        
        
    }
}
