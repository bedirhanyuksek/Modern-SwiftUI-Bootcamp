//
//  NoteRowList.swift
//  Lesson7
//
//  Created by Bedirhan Yüksek on 14.09.2025.
//

import SwiftUI

struct NoteRowList: View {
    
    let note: Note
    
    var body: some View {
        HStack {
            Text(note.title)
                .font(.headline)
            
            Spacer()
            
            Text(note.date, style: .date)
                .font(.subheadline)
            
        }//HStack
    }
}
