//
//  ColorsBallsViewComponent.swift
//  SwiftUILearning
//
//  Created by Flaminia Castaño on 10/08/2023.
//

import SwiftUI

struct ColorsBallsViewComponent: View {
    var body: some View {
        HStack {
            GradientCircleComponent(colors: [.blue.opacity(0.4), .blue],
                                    center: .center,
                                    stroke: (Color.black, 1))
            GradientCircleComponent(colors: [.yellow.opacity(0.4), .yellow],
                                    center: .center,
                                    stroke: (Color.black, 1))
            GradientCircleComponent(colors: [.red.opacity(0.4), .red],
                                     center: .center,
                                     stroke: (Color.black, 1))
        }
    }
}

struct ColorsBallsViewComponente_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBallsViewComponent().frame(width: 100)
    }
}
