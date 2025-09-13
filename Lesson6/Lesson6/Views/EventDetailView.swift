//
//  EventDetailView.swift
//  Lesson6
//
//  Created by Bedirhan Yüksek on 13.09.2025.
//

import SwiftUI

struct EventDetailView: View {
    
    
    @ObservedObject var viewModel: EventViewModel
    let event: Event
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .center, spacing: 16){
            Text(event.title)
                .font(.title)
                .bold()
            
            Text("Tarih: \(event.date.formatted(date: .long,time:.shortened))")
                .font(.subheadline)
            
            Text(event.type.rawValue)
                .font(.subheadline)
            
            Spacer()
            
            Button(role: .destructive){
                viewModel.deleteEvent(event: event)
                dismiss()
            } label: {
                Text("Etkinliği Sil")
            }
        
        }
    }
}
