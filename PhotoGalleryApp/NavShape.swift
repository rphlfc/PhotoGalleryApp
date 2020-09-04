//
//  NavShape.swift
//  PhotoGalleryApp
//
//  Created by Raphael Cerqueira on 02/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct NavShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.move(to: CGPoint(x: rect.midX * 0.8, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.maxY * 0.8), control: CGPoint(x: rect.midX * 0.8, y: rect.maxY * 0.8))
        
        path.addQuadCurve(to: CGPoint(x: rect.midX * 1.2, y: rect.minY), control: CGPoint(x: rect.midX * 1.2, y: rect.maxY * 0.8))
        
        path.closeSubpath()
        
        return path
    }
}

struct NavShape_Previews: PreviewProvider {
    static var previews: some View {
        NavShape()
            .frame(maxWidth: .infinity)
            .frame(height: 70)
    }
}
