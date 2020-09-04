//
//  MainCardView.swift
//  PhotoGalleryApp
//
//  Created by Raphael Cerqueira on 02/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct MainCardView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                VStack {
                    Spacer()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Image("avatar1")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .clipShape(Circle())
                                
                                Text("Tobby Maclarren")
                                    .foregroundColor(.gray)
                            }
                            
                            Text("Tokyo Lights")
                                .font(.system(size: 24, weight: .heavy))
                                .foregroundColor(Color(#colorLiteral(red: 0.1917663515, green: 0.1958242953, blue: 0.2175704241, alpha: 1)))
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "arrow.right")
                                .font(.system(size: 24, weight: .semibold))
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(20)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 240)
            .background(RoundedRectangle(cornerRadius: 20)
            .fill(Color.white))
            .padding(.leading)
            .shadow(color: Color.black.opacity(0.07), radius: 5, x: 5, y: 10)
            
            VStack {
                HStack {
                    Image("image1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 10)
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
        .frame(height: 340)
        .padding(.horizontal, 30)
    }
}

struct MainCardView_Previews: PreviewProvider {
    static var previews: some View {
        MainCardView()
    }
}
