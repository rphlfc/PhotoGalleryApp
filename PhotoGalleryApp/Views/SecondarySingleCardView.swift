//
//  SecondarySingleCardView.swift
//  PhotoGalleryApp
//
//  Created by Raphael Cerqueira on 02/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct SecondarySingleCardView: View {
    var image: String
    var avatar: String
    var name: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    Spacer()
                    
                    VStack {
                        Spacer()
                        
                        HStack {
                            Image(self.avatar)
                                .resizable()
                                .frame(width: 28, height: 28)
                                .clipShape(Circle())
                            
                            Text(self.name)
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                        }
                        .padding(20)
                    }
                }
                .frame(height: 240)
                .background(RoundedRectangle(cornerRadius: 20)
                .fill(Color.white))
                .padding(.leading)
                .shadow(color: Color.black.opacity(0.07), radius: 5, x: 5, y: 10)
                
                VStack {
                    HStack {
                        Image(self.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 160, height: 220)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 10)
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
            .frame(width: geometry.size.width / 2, height: 340)
            .padding(.horizontal, 30)
        }
    }
}

struct SecondarySingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SecondarySingleCardView(image: "image1", avatar: "avatar1", name: "Raphael")
    }
}
