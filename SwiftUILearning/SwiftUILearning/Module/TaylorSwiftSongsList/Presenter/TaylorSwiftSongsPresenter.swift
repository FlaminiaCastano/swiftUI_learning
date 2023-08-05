//
//  TaylorSwiftSongsPresenter.swift
//  SwiftUILearning
//
//  Created by Flaminia Castaño on 05/08/2023.
//

import Foundation

class TaylorSwiftSongsPresenter: ObservableObject {
    @Published var viewModel = ListSongViewModel()
    
    func fetchData() {
        let songs = [
            Song(albumPhoto: "midnights", album: "Midnights", name: "Anti-Hero"),
            Song(albumPhoto: "1989",album: "1989", name: "Wildest Dreams"),
            Song(albumPhoto: "red",album: "Red (Taylor's Version)", name: "22 (Taylor's Version)"),
            Song(albumPhoto: "lover",album: "Lover", name: "ME!"),
            Song(albumPhoto: "midnights",album: "Midnights", name: "Vigilante Shit"),
            Song(albumPhoto: "red",album: "Red (Taylor's Version)", name: "We are never ever getting back together (Taylor's Version)"),
            Song(albumPhoto: "fearless",album: "Fearless (Taylor's Version)", name: "Love story (Taylor's Version)"),
            Song(albumPhoto: "red",album: "Red (Taylor's Version)", name: "I knew you were a trouble (Taylor's Version)"),
            Song(albumPhoto: "evermore",album: "Evermore", name: "no body, no crime"),
            Song(albumPhoto: "fearless",album: "Fearless (Taylor's Version)", name: "Hey Stephen (Taylor's Version)"),
            Song(albumPhoto: "speaknow",album: "Speak now (Taylor's Version)", name: "Back to December (Taylor's Version"),
            Song(albumPhoto: "folklore",album: "Folklore", name: "cardigan"),
            Song(albumPhoto: "midnights",album: "Midnights", name: "You're on your own, kid"),
            Song(albumPhoto: "speaknow",album: "Speak now (Taylor's Version)", name: "Enchanted (Taylor's Version"),
            Song(albumPhoto: "reputation",album: "Reputation", name: "End Game"),
            Song(albumPhoto: "speaknow",album: "Speak now (Taylor's Version)", name: "Mine (Taylor's Version"),
            Song(albumPhoto: "lover",album: "Lover", name: "You need to calm down"),
            Song(albumPhoto: "reputation",album: "Reputation", name: "Getaway Car"),
            Song(albumPhoto: "red",album: "Red (Taylor's Version)", name: "All to well (10 Minute Version) (Taylor's Version)"),
            Song(albumPhoto: "1989",album: "1989", name: "Shake it off"),
            Song(albumPhoto: "lover",album: "Lover", name: "The man"),
            Song(albumPhoto: "folklore",album: "Folklore", name: "august"),
            Song(albumPhoto: "evermore",album: "Evermore", name: "'this the damn season"),
            Song(albumPhoto: "lover",album: "Lover", name: "Cruel Summer"),
            Song(albumPhoto: "1989",album: "1989", name: "Bad Blood"),
            Song(albumPhoto: "midnights",album: "Midnights", name: "Midnight Rain"),
            Song(albumPhoto: "reputation",album: "Reputation", name: "...Ready for it?"),
            Song(albumPhoto: "reputation",album: "Reputation", name: "I did something bad")
        ]
        
        groupedSongsForAlbums(songs: songs)
    }
    
    
    func groupedSongsForAlbums(songs: [Song]) {
        viewModel.groupedSongs = Dictionary(grouping: songs, by: { $0.album })
    }
}
