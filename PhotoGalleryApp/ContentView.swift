//
//  ContentView.swift
//  PhotoGalleryApp
//
//  Created by Raphael Cerqueira on 02/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9569484591, green: 0.9567540288, blue: 0.9653684497, alpha: 1)).edgesIgnoringSafeArea(.bottom)
            
            ScrollView(.vertical) {
                VStack {
                    TopSearchView()
                    
                    MainCardView()
                        .padding(.top, 50)
                    
                    HStack(spacing: 0) {
                        SecondarySingleCardView(image: "image2", avatar: "avatar2", name: "Lili Harsh")
                        
                        SecondarySingleCardView(image: "image3", avatar: "avatar3", name: "Barney S.")
                    }
                    .padding(.leading, 30)
                    
                    Spacer()
                        .frame(minHeight: 370)
                }
            }
            .edgesIgnoringSafeArea(.top)
            
            VStack {
                Spacer()
                
                TabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
