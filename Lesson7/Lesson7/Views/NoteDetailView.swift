//
//  NoteDetailView.swift
//  Lesson7
//
//  Created by Bedirhan Yüksek on 14.09.2025.
//

import SwiftUI

struct NoteDetailView: View {
    @ObservedObject var viewModel: NoteViewModel
    let note: Note
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing:10){
            Text(note.title)
                .font(.title.bold())
                .frame(maxWidth: .infinity)
            
            
            Text(note.content)
                .font(.subheadline)
                .frame(maxWidth: .infinity,alignment: .leading)
            
            Spacer()
            
            Text("Tarih: \(note.date.formatted(date: .long, time: .shortened))")
                .font(.caption)
                .padding(.bottom,10)
            
            
            
            Button(role: .destructive){
                viewModel.deleteNote(note: note)
                dismiss()
            } label:{
                Text("Notu Sil")
            }
            
        }//VStack
        .padding()
        
    }
}
