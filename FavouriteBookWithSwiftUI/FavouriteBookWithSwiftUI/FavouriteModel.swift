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

// bands

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

// movies

let pulpFiction = FavouriteElemenst(
    name:"Pulp Fiction",
    imageName:"pulpfiction",
    description:"Movie 1"
)

let theDarkNight = FavouriteElemenst(
    name:"The Dark Night",
    imageName:"thedarknight",
    description:"Movie 2"
)

let killBill = FavouriteElemenst(
    name:"Kill Bill",
    imageName:"killbill",
    description:"Movie 3"
)

let favouriteFilms = FavouriteModel(title:"Favorite Films"
    ,elements: [pulpFiction,theDarkNight,killBill])

let myFavorites = [favouriteBands,favouriteFilms]
