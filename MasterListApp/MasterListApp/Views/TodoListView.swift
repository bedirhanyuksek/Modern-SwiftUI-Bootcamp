//
//  TodoListView.swift
//  MasterListApp
//
//  Created by Bedirhan Yüksek on 3.09.2025.
//

import SwiftUI

struct TodoListView: View {
    
    @ObservedObject var viewModel: TodoViewModel
    var themeColor: Color
    
    
    
    var body: some View {
        List{
            
            Section(header: Text("Tamamlanacaklar").foregroundColor(themeColor)){
                ForEach(viewModel.todoItems.filter {!$0.isCompleted}) { item in
                    NavigationLink(destination: DetailView(item: item, viewModel: viewModel)){
                        TodoRowView(item:item){
                            viewModel.toggleCompletion(for: item)
                        }
                    }
                    
                }
                .onDelete { indexSet in
                    viewModel.deleteItems(at: indexSet, isCompleted: false)
                    
                }
                
            }
            
            Section(header:Text("Tamamlananlar").foregroundColor(themeColor)){
                ForEach(viewModel.todoItems.filter {$0.isCompleted}){ item in
                    NavigationLink(destination: DetailView(item: item, viewModel: viewModel)){
                        TodoRowView(item:item){
                            viewModel.toggleCompletion(for: item)
                        }
                        
                    }
                    
                }
                .onDelete { indexSet in
                    viewModel.deleteItems(at: indexSet, isCompleted: true)
                    
                }
            }
            
           
        }
        .scrollContentBackground(.hidden)
        .foregroundColor(themeColor)
        
    }
}

