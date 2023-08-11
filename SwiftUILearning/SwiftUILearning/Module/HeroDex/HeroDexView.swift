//
//  HeroDexView.swift
//  SwiftUILearning
//
//  Created by Flaminia Castaño on 10/08/2023.
//

import SwiftUI

struct HeroDexView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: -70) {
            HStack(alignment: .top) {
                SpeechIndicatorComponent(blinkSpeed: 2,
                                         blinkColor1: Color(red: 0.2, green: 0.6, blue: 1.0),
                                         blinkColor2: Color.blue)
                    .frame(width: 100)
                Spacer()
                ColorsBallsViewComponent()
                    .frame(width: 100)
            }
            GeometryReader { geometry in
                DecorativeLineComponent().frame(width: geometry.size.width)
            }
        }
        .padding(20)
    }
}


struct HeroDexView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDexView().background(Color.red)
    }
}
