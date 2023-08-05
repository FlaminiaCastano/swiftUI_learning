//
//  TaylorSwiftSongsView.swift
//  SwiftUILearning
//
//  Created by Flaminia Castaño on 05/08/2023.
//

import SwiftUI

struct TaylorSwiftSongsView: View {
    
    @ObservedObject var presenter = TaylorSwiftSongsPresenter()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(presenter.viewModel.groupedSongs.keys.sorted(), id: \.self) { album in
                    NavigationLink(destination: AlbumDetailView(album: album, songs: presenter.viewModel.groupedSongs[album] ?? [])) {
                        VStack(alignment: .leading) {
                            Text(album)
                                .font(.title2)
                                .bold()
                        }
                    }
                }
            }
            .onAppear {
                presenter.fetchData()
            }
            .navigationTitle("Albums de Taylor Swift")
        } .background(Color.white)
    }
    
    
}

struct TaylorSwiftSongsView_Previews: PreviewProvider {
    static var previews: some View {
        TaylorSwiftSongsView()
    }
}
