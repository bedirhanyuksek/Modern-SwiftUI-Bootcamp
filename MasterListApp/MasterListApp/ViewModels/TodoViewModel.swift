//
//  TodoViewModel.swift
//  MasterListApp
//
//  Created by Bedirhan Yüksek on 3.09.2025.
//

import Foundation
import SwiftUI

class TodoViewModel: ObservableObject {
    @Published var todoItems: [TodoItem] = [
        TodoItem(title:"SwiftUI Öğren", description: "SwiftUI'ın temelini at.", isCompleted: true),
        TodoItem(title:"Spor Yap", description: "Düzenli egzersizlere başla.", isCompleted: true),
        TodoItem(title:"Mail Gönder", description: "İş görüşmesi için başvuru maili gönder.", isCompleted: false),
        TodoItem(title:"Ödev Yap",description: "Günlük tüm ödevlerini bitir.", isCompleted: true),
        TodoItem(title:"Alışveriş Yap", description: "Market için alışveriş listesi oluştur.", isCompleted: false),
        TodoItem(title:"Temizlik Yap", description: "Ev için temizlik yap.", isCompleted: false),
        TodoItem(title:"Kitap Oku", description: "Günlük 50 sayfa kitap oku.", isCompleted: true),
        TodoItem(title:"Dil Öğren",description: "Yeni bir dil öğrenmeye başla.", isCompleted: false),
        TodoItem(title:"Müzik Dinle", description: "Yeni tarzları keşfet.", isCompleted: true),
        TodoItem(title:"Yeni Bir Oyun Dene", description: "Daha önce oynamadığın bir oyunu dene.", isCompleted: false)
    ]
    
    @Published var themeColor: Color = .blue
    
    let symbols: [String] = ["star.fill", "heart.fill", "moon.fill", "cart.fill", "sportscourt.fill", "cup.and.saucer.fill", "book.fill", "oven.fill","photo.fill","car.fill","basketball.fill","film.fill"]
    
    func addTodo(title:String,description: String){
        let newItem = TodoItem(title: title, description: description, isCompleted: false)
        todoItems.append(newItem)
    }
    
    func deleteItems(at offsets: IndexSet, isCompleted: Bool){
        
        let itemsToDelete = todoItems.filter {$0.isCompleted == isCompleted}
        for index in offsets {
            if let item = itemsToDelete[safe: index]{
                todoItems.removeAll {$0.id == item.id}
            }
        }
    }
    
    func toggleCompletion(for item: TodoItem){
        if let index = todoItems.firstIndex(where: { $0.id == item.id }) {
            todoItems[index].isCompleted.toggle()
        }
    }
    
    func setRandomTheme(){
        let colors: [Color] = [.red, .green, .blue, .purple, .orange, .pink]
        self.themeColor = colors.randomElement() ?? .blue
        
    }
    
    
}

extension Array {
    subscript(safe index: Int) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

