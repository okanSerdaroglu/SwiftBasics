//
//  FavouriteModel.swift
//  FavouriteBookWithSwiftUI
//
//  Created by Okan Serdaroğlu on 8.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import Foundation

struct FavouriteModel : Identifiable {
    var id = UUID()
    var title:String
    var elements : [FavouriteElemenst]
}

struct FavouriteElemenst  : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

let metallica = FavouriteElemenst(
    name:"Metallica",
    imageName:"metallica",
    description:"Music group 1"
)

let megaDeth = FavouriteElemenst(
    name:"Mega Deth",
    imageName:"megadeth",
    description:"Music group 2"
)

let ironMaiden = FavouriteElemenst(
    name:"Iron Maiden",
    imageName:"ironmaidens",
    description:"Music group 3"
)

let favouriteBands = FavouriteModel(title:"Favorite Bands"
    ,elements: [metallica,megaDeth,ironMaiden])
