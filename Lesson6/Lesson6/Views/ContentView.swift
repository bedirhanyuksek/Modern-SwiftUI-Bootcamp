//
//  ContentView.swift
//  Lesson6
//
//  Created by Bedirhan Yüksek on 12.09.2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = EventViewModel()
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            
            NavigationStack{
                List{
                    ForEach(viewModel.events){ item in
                        NavigationLink(destination: EventDetailView(viewModel:viewModel, event: item)){
                            EventRowList(event: item){
                                viewModel.toggleReminder(for: item)
                            }
                        }
                       
                    }
                }//List
                .navigationTitle("Etkinlikler")
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
                    AddEventView(viewModel: viewModel)
                        .presentationDetents([.medium])
                }
                
            }//NavigationStack
            
            
           
        }//VStack
        
    }
}


#Preview {
    ContentView()
}

