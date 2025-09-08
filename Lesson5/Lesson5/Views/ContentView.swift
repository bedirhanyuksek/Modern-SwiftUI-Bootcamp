//
//  ContentView.swift
//  Lesson5
//
//  Created by Bedirhan Yüksek on 7.09.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TodoViewModel()
    
    @State private var newTask: String = ""
    
    var bgColor = LinearGradient(colors: [Color.blue.opacity(0.2), Color.purple.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing)
    
    
    
    var body: some View {
        VStack {
            HStack{
                InputTextField(text: $newTask)
                
                AddButton{
                    viewModel.addTodo(title: newTask, isCompleted: false)
                    newTask = ""
                }
                
            }
            .padding(20)
            
            List{
                ForEach(viewModel.todos) { item  in
                    TodoRowList(task: item){
                        viewModel.toggleCompletion(for: item)
                    }
                }
                .onDelete{ indexSet in viewModel.deleteTodo(at:indexSet,isCompleted: false)
                }
                
                
            }
            .scrollContentBackground(.hidden)
            
        }
        
        .alert(viewModel.alertMessage, isPresented: $viewModel.showAlert){
            Button("Tamam", role: .cancel){
                
            }
        }
        .background(bgColor)
        
    }
}

#Preview {
    ContentView()
}
