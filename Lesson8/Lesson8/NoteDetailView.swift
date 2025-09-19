//
//  NoteDetailView.swift
//  Lesson8
//
//  Created by Bedirhan Yüksek on 19.09.2025.
//

import SwiftUI

struct NoteDetailView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var note: Note
    @State private var title: String
    @State private var content: String
    @Environment(\.dismiss) private var dismiss

    init(note: Note) {
        self.note = note
        _title = State(initialValue: note.title ?? "")
        _content = State(initialValue: note.content ?? "")
    }

    var body: some View {
        Form {
            Section("Başlık") {
                TextField("Başlık", text: $title)
            }
            Section("İçerik") {
                TextEditor(text: $content)
                    .frame(height: 200)
            }
        }
        .navigationTitle("Not Detayı")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Kaydet") {
                    updateNote()
                    dismiss()
                }
            }
        }
    }

    private func updateNote() {
        note.title = title
        note.content = content
        note.date = Date()

        do {
            try viewContext.save()
        } catch {
            print("Error updating note: \(error)")
        }
    }
}
