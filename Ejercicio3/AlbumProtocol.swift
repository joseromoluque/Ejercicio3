//
//  AlbumProtocol.swift
//  Ejercicio3
//
//  Created by José Santiago  Romo Luque on 9/10/22.
//

import Foundation
protocol AlbumProtocol {
    var albumName: String {get set}
    var albumArtist: String {get set}
    var albumImage: String{get set}
    
    func getTitle() -> String
    func getImg() -> String
    func getArtist() -> String
}
