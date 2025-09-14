//
//  ContentView.swift
//  Lesson7
//
//  Created by Bedirhan Yüksek on 14.09.2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = NoteViewModel()
    
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            NavigationStack{
                List{
                    ForEach(viewModel.notes){item in
                        NavigationLink(destination: NoteDetailView(viewModel: viewModel, note: item)){
                            NoteRowList(note: item)
                        }
                    }
                    
                }//List
                .navigationTitle("Notlar")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing){
                        Button{
                            showSheet.toggle()
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
                .sheet(isPresented: $showSheet){
                    AddNoteView(viewModel: viewModel)
                        .presentationDetents([.medium])
                }
                
            }//NavigationStack
            
            
        }//VStack
        
    }
}

#Preview {
    ContentView()
}
