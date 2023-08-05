//
//  AlbumPhotoContainer.swift
//  SwiftUILearning
//
//  Created by Flaminia Castaño on 05/08/2023.
//

import Foundation
import SwiftUI

struct AlbumPhotoContainer: View {
    
    let avatar: String
    
    var body: some View {
        ZStack {
            Image(avatar)
              .frame(width: 46, height: 46)
              .background(
                Color(.purple)
              )
              .cornerRadius(14)
        }
        .frame(width: 64, height: 64)
    }
}
