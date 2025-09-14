//
//  AddNoteView.swift
//  Lesson7
//
//  Created by Bedirhan Yüksek on 14.09.2025.
//

import SwiftUI

struct AddNoteView: View {
    @ObservedObject var viewModel: NoteViewModel
    @Environment(\.dismiss) private var dismiss
    
    @State private var title: String = ""
    @State private var content: String = ""
    
    var body: some View {
        NavigationStack{
            Form{
                Section(content:{
                    
                    TextField("Başlık", text: $title)
                    TextField("İçerik", text: $content)
                    
                    
                    
                    
                    
                })
                
                Button("Kaydet"){
                    viewModel.addNote(title: title, content: content)
                    dismiss()
                }
                .frame(maxWidth:.infinity, alignment: .center)
                
            }
            .navigationTitle("Not Ekle")
        }//NavigationStack
    }
}
