//
//  TodoViewModel.swift
//  Lesson5
//
//  Created by Bedirhan Yüksek on 7.09.2025.
//

import Foundation
import SwiftUI

class TodoViewModel: ObservableObject {
    
    @Published var todos: [Task] = [
        
    ]
    
    @Published var alertMessage = ""
    @Published var showAlert = false
    
    func toggleCompletion(for task: Task) {
        if let index = (todos.firstIndex(where: {$0.id == task.id})) {
            todos[index].isCompleted.toggle()
        }
    }
    
    func addTodo(title:String,isCompleted:Bool){
        let newTodo = Task(title: title,isCompleted: isCompleted)
        if newTodo.title.isEmpty{
            alertMessage = "Lütfen bir görev giriniz"
            showAlert = true
        }else{
            todos.append(newTodo)
        }
        
    }
    
    func deleteTodo(at offsets: IndexSet, isCompleted: Bool){
        let itemsToDelete = todos.filter{$0.isCompleted == isCompleted}
        for index in offsets{
            if let item = itemsToDelete[safe:index]{
                todos.removeAll {$0.id == item.id}
            }
        }
    }
    
}

extension Array {
    subscript(safe index: Int) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
