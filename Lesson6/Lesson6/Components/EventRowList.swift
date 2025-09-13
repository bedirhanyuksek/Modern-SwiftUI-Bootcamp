//
//  EventRowList.swift
//  Lesson6
//
//  Created by Bedirhan Yüksek on 13.09.2025.
//

import SwiftUI

struct EventRowList: View {
    
    let event: Event
    var onToggle: () -> Void
    
    var body: some View {
        HStack(spacing: 12){
            VStack(spacing: 12){
                Text(event.title)
                    .font(.headline)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                Text(event.date, style: .date)
                    .font(.subheadline)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
            }//VStack
            
            Spacer()
            
            Text(event.type.rawValue)
                .font(.caption)
                .lineLimit(1)
                .frame(width: 80)
                
            
            Button{
                onToggle()
            }label:{
                Image(systemName: event.hasReminder ? "bell.fill" : "bell")
                    .imageScale(.large)
            }
            .buttonStyle(.plain)
                
        }//HStack
        
        
    }
}
