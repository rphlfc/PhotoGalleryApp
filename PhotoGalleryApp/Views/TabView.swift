//
//  TabView.swift
//  PhotoGalleryApp
//
//  Created by Raphael Cerqueira on 03/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        ZStack {
            NavShape()
                .fill(Color(#colorLiteral(red: 0.8116599917, green: 0.8151450753, blue: 0.8543636203, alpha: 1)))
                .frame(height: 60)
                .cornerRadius(20)
            
            HStack {
                Spacer()
                
                ForEach(0 ..< 2) { item in
                    Button(action: {
                        
                    }) {
                        Image(systemName: item == 0 ? "house" : "bubble.left")
                            .foregroundColor(item == 0 ? Color(#colorLiteral(red: 0.8743057251, green: 0.3247668445, blue: 0.7390705943, alpha: 1)) : .white)
                    }
                    
                    Spacer()
                }
                
                Button(action: {
                    
                }) {
                    Image(systemName: "camera")
                        .font(.system(size: 26, weight: .bold))
                        .frame(width: 64, height: 64)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8743057251, green: 0.3247668445, blue: 0.7390705943, alpha: 1)), Color(#colorLiteral(red: 0.8836515546, green: 0.3874465823, blue: 0.7995702624, alpha: 1))]), startPoint: .bottom, endPoint: .top))
                        .foregroundColor(Color(#colorLiteral(red: 0.9996604323, green: 0.7157174945, blue: 1, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0.8836515546, green: 0.3874465823, blue: 0.7995702624, alpha: 1)).opacity(0.7), radius: 5, x: 0, y: 0)
                        .cornerRadius(32)
                        .offset(x: -5, y: -20)
                }
                
                Spacer()
                
                ForEach(0 ..< 2) { item in
                    Button(action: {
                        
                    }) {
                        Image(systemName: item == 0 ? "pencil" : "person")
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 10)
        }
        .padding(.horizontal, 30)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
