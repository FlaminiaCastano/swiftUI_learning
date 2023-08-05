//
//  DetailsSong.swift
//  SwiftUILearning
//
//  Created by Flaminia Castaño on 05/08/2023.
//

import Foundation

import SwiftUI

struct AlbumDetailView: View {
    var album: String
    var songs: [Song]
    
    var body: some View {
        List {
            ForEach(songs, id: \.name) { song in
                ZStack(alignment: .center) {
                    HStack {
                        AlbumPhotoContainer(avatar: song.albumPhoto)
                        Spacer()
                    }
                    VStack(alignment: .leading) {
                        Text(song.name)
                            .font(.title2)
                            .bold()
                    }
                    .padding(.leading, 70)
                }
            }
        }
        .padding()
        .navigationTitle(album)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailsSongView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetailView(album: "RED", songs: [Song(albumPhoto: "red", album: "Red", name: "All to well (Taylor's Version)"), Song(albumPhoto: "red", album: "Red", name: "All to well (Taylor's Version)"), Song(albumPhoto: "red", album: "Red", name: "All to well (Taylor's Version)")])
    }
}
