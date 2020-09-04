//
//  TopSearchView.swift
//  PhotoGalleryApp
//
//  Created by Raphael Cerqueira on 02/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TopSearchView: View {
    private let circleSize: CGFloat = 6
    @State var search: String = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Text("Trending")
                        .font(.system(size: 36, weight: .heavy))
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        VStack(spacing: 4) {
                            Circle()
                                .frame(width: self.circleSize, height: self.circleSize)
                            
                            Circle()
                                .frame(width: self.circleSize, height: self.circleSize)
                            
                            Circle()
                                .frame(width: self.circleSize, height: self.circleSize)
                        }
                    }
                }
                .foregroundColor(Color(#colorLiteral(red: 0.2040720284, green: 0.2037703097, blue: 0.2124988437, alpha: 1)))
                .frame(height: 200)
                
                Spacer()
            }
            .frame(height: 160)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .overlay(HStack {
                    TextField("Search Photos...", text: self.$search)
                        .font(.system(size: 14))
                        .frame(height: 40)
                        .padding(.leading, 30)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 22))
                            .frame(width: 36, height: 36)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8743057251, green: 0.3247668445, blue: 0.7390705943, alpha: 1)), Color(#colorLiteral(red: 0.8836515546, green: 0.3874465823, blue: 0.7995702624, alpha: 1))]), startPoint: .bottom, endPoint: .top))
                            .foregroundColor(Color(#colorLiteral(red: 0.9996604323, green: 0.7157174945, blue: 1, alpha: 1)))
                            .cornerRadius(10)
                            .padding(.trailing, 12)
                            .shadow(color: Color(#colorLiteral(red: 0.8836515546, green: 0.3874465823, blue: 0.7995702624, alpha: 1)).opacity(0.7), radius: 5, x: 0, y: 0)
                    }
                })
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 10)
                .offset(y: 30)
        }
        .padding(.horizontal, 30)
        .background(Rectangle()
        .fill(Color(#colorLiteral(red: 0.9383231997, green: 0.932898283, blue: 0.9503770471, alpha: 1)))
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 10))
        .edgesIgnoringSafeArea(.top)
    }
}

struct TopSearchView_Previews: PreviewProvider {
    static var previews: some View {
        TopSearchView()
    }
}
