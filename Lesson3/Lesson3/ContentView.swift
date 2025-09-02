//
//  ContentView.swift
//  Lesson3
//
//  Created by Bedirhan Yüksek on 2.09.2025.
//
import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    
    var color: LinearGradient{
        LinearGradient(
            colors: [
                Color(red: 0.72, green: 0.45, blue: 0.20),
                Color(red: 0.85, green: 0.55, blue: 0.30),
                Color(red: 0.95, green: 0.75, blue: 0.50)
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
    }
    
    var body: some View{
        VStack{
            
            Capsule()
                .stroke(color, lineWidth: 6)
                .background(Capsule().fill(color))
                .frame(width: 40,height: 25)
            
            HStack(alignment:.top,spacing: 0){
                
                Button(action: {count -= 1}) {
                    Circle()
                        .stroke(color, lineWidth: 6)
                        .frame(width: 40, height: 40)
                        .background(Circle().fill(color))
                        .overlay(
                            Image(systemName:"minus")
                                .foregroundColor(.white)
                        )
                }
                
                ZStack{
                    Circle()
                        .stroke(color,lineWidth: 12)
                        .frame(width: 220, height: 220)
                        .shadow(color: .black.opacity(0.5), radius: 8, x: 4, y: 4)
                    
                    
                    
                    
                    Text("\(count)")
                        .font(.system(size: 60, weight: .bold))
                        .foregroundColor(.black)
                    
                }
                
                Button(action: {count += 1}) {
                    Circle()
                        .stroke(color, lineWidth: 6)
                        .frame(width: 40, height: 40)
                        .background(Circle().fill(color))
                        .overlay(
                            Image(systemName:"plus")
                                .foregroundColor(.white)
                        )
                }
                
                
            }

        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


