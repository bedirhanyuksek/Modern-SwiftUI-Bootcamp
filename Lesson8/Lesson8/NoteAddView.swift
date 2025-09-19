//
//  NoteAddView.swift
//  Lesson8
//
//  Created by Bedirhan Yüksek on 19.09.2025.
//

import SwiftUI

struct NoteAddView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.dismiss) private var dismiss

    @State private var title = ""
    @State private var content = ""

    var body: some View {
        NavigationView {
            Form {
                Section("Başlık") {
                    TextField("Başlık girin", text: $title)
                }
                Section("İçerik") {
                    TextEditor(text: $content)
                        .frame(height: 200)
                }
            }
            .navigationTitle("Yeni Not")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Kaydet") {
                        addNote()
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("İptal") { dismiss() }
                }
            }
        }
    }

    private func addNote() {
        let newNote = Note(context: viewContext)
        newNote.id = UUID()
        newNote.title = title
        newNote.content = content
        newNote.date = Date()

        do {
            try viewContext.save()
        } catch {
            print("Error saving note: \(error)")
        }
    }
}

