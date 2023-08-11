//
//  DecorativeLineComponent.swift
//  SwiftUILearning
//
//  Created by Flaminia Castaño on 10/08/2023.
//

import SwiftUI

struct LineView: View {
    var pointStart: CGPoint
    var pointFinish: CGPoint
    var stroke: (color: Color, lineWidth: CGFloat)
    
    init(pointStart: CGPoint,
         pointFinish: CGPoint,
         stroke: (color: Color, lineWidth: CGFloat)) {
        self.pointStart = pointStart
        self.pointFinish = pointFinish
        self.stroke = stroke
    }
    
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: pointStart) // punto de inicio
                path.addLine(to: pointFinish) // punto final
            }
            .stroke(stroke.color, lineWidth: stroke.lineWidth) // Color y grosor de la línea
        }
    }
}

struct DecorativeLineComponent: View {
    var stroke: (color: Color, lineWidth: CGFloat) = (color: Color.black.opacity(0.6), 8)
    var body: some View {
        ZStack {
            LineView(pointStart: CGPoint(x: 50, y: 50), pointFinish: CGPoint(x: 250, y: 50),
                     stroke: stroke)
            LineView(pointStart: CGPoint(x: 51, y: 50), pointFinish: CGPoint(x: -10, y: 100),
            stroke: stroke)
            LineView(pointStart: CGPoint(x: -9, y: 100), pointFinish: CGPoint(x: -150, y: 100),
                     stroke: stroke)
        }.frame(width: 100)
    }
}

struct DecorativeLineComponent_Preview: PreviewProvider {
    static var previews: some View {
        DecorativeLineComponent()
    }
}
