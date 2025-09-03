//
//  ContentView.swift
//  MasterListApp
//
//  Created by Bedirhan Yüksek on 3.09.2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = TodoViewModel()
    
    
    var bgColor = LinearGradient(colors: [Color.blue.opacity(0.2), Color.purple.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        NavigationStack{
            VStack {
                
                AddTodoView{
                    title,description in
                    viewModel.addTodo(title:title,description:description)
                }
                
                
                TodoListView(viewModel: viewModel,themeColor:viewModel.themeColor)
            }
            .background(bgColor)
            .accentColor(viewModel.themeColor)
            .onAppear{
                viewModel.setRandomTheme()
            }
        }
        
    }
    
    
        
    
        
}

#Preview {
    ContentView()

}

