//
//  Album.swift
//  Ejercicio3
//
//  Created by José Santiago  Romo Luque on 9/10/22.
//


import Foundation
class Album: AlbumProtocol {
    init(name: String, artist: String, imageURL: String){
        albumName = name
        albumArtist = artist
        albumImage = imageURL
    }
    var albumName: String
    var albumImage: String
    var albumArtist: String
    
    func getTitle() -> String {
        return self.albumName
    }
    func getImg() -> String {
        return self.albumImage
    }
    
    func getArtist() -> String {
        return self.albumArtist
    }
    
    
}
