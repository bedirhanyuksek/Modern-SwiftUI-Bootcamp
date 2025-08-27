//
//  ContentView.swift
//  Lesson1.3
//
//  Created by Bedirhan Yüksek on 27.08.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack(alignment: .top) {
                
                LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    .frame(height: 400)

                VStack(spacing: 16) {
                    
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    
                    Text("Bedirhan Yüksek")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Bilgisayar Mühendisliği")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    
                    HStack(spacing: 12) {
                        VStack {
                            Text("197")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.white)
                            Text("Takipçi")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                        .frame(width: 100, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white.opacity(0.2))
                        )
                        
                        VStack {
                            Text("199")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.white)
                            Text("Takip Edilen")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                        .frame(width: 100, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white.opacity(0.2))
                        )
                        
                        VStack {
                            Text("2K")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.white)
                            Text("Beğeni")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                        .frame(width: 100, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white.opacity(0.2))
                        )
                    }
                    .padding(.top, 12)
                }
                .padding(.top, 40)
            }
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Hakkımda")
                    .font(.headline)
                    .bold()
                ScrollView {
                    Text("Ben Bedirhan Yüksek, Bandırma Onyedi Eylül Üniversitesi Bilgisayar Mühendisliği 4. sınıf öğrencisiyim. Mobil uygulama geliştirmeyle ilgileniyorum.")
                        .font(.body)
                        .lineSpacing(5)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.systemGray6))
                        )
                }
                .frame(height: 150)
            }
            .padding(.horizontal)
            
            
            HStack(spacing: 16) {
                Button("Mesaj Gönder") {}
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .bold()
                
                Button("Takip Et") {}
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                    )
                    .foregroundColor(.black)
                    .cornerRadius(12)
                    .bold()
            }
            .padding(.horizontal, 20)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}


