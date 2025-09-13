//
//  AddEventView.swift
//  Lesson6
//
//  Created by Bedirhan Yüksek on 13.09.2025.
//

import SwiftUI

struct AddEventView: View {
    @ObservedObject var viewModel: EventViewModel
    @Environment(\.dismiss) private var dismiss
    
    @State private var title: String = ""
    @State private var date: Date = Date()
    @State private var type: EventType = .birthday
    @State private var hasReminder = false
    
    var body: some View {
        NavigationStack {
            Form{
                Section(content:{
                    
                    
                    TextField("Etkinlik Adı",text: $title)
                    DatePicker("Tarih",selection: $date,displayedComponents: [.date, .hourAndMinute])
                    Picker("Tür",selection: $type){
                        ForEach(EventType.allCases, id: \.self){ type in
                            Text(type.rawValue)
                        }
                    }
                    Toggle("Hatırlatıcı",isOn: $hasReminder)
                })
            }
            .navigationTitle("Yeni Etkinlik")
            .toolbar {
                ToolbarItem(placement: .confirmationAction){
                    Button("Kaydet"){
                        viewModel.addEvent(title: title, date: date, type: type, hasReminder: hasReminder)
                        dismiss()
                    }
                }
                ToolbarItem(placement: .primaryAction){
                    Button("İptal"){
                        dismiss()
                    }
                    
                }
            }
            
        }//NavigationStack
        
    }
}
