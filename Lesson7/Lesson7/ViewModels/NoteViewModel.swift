//
//  NoteViewModel.swift
//  Lesson7
//
//  Created by Bedirhan Yüksek on 14.09.2025.
//

import Foundation
import SwiftUI

class NoteViewModel: ObservableObject {
    @Published var notes: [Note] = [
        Note(title:"Ödev", content:"Bootcampte verilen not defteri uygulamasında userdefaults kullanılacak", date: Date().addingTimeInterval(-86400)),
    ]
    
    private let notesKey = "notes_key"
    
    init() {
        loadNotes()
    }
    
    private func savedNotes(){
        if let encodedData = try? JSONEncoder().encode(notes){
            UserDefaults.standard.set(encodedData, forKey: notesKey)
        }
    }
    
    func addNote(title: String, content: String){
        let newNote = Note(title:title,content:content)
        notes.append(newNote)
        savedNotes()
    }
    
    func deleteNote(note: Note){
        notes.removeAll {$0.id == note.id}
        savedNotes()
    }
    
    private func loadNotes(){
        if let savedData = UserDefaults.standard.data(forKey: notesKey),
            let decodedData = try? JSONDecoder().decode([Note].self, from: savedData){
                notes = decodedData
            }
        
    }
}
