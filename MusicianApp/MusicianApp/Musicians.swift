//
//  Musicians.swift
//  MusicianApp
//
//  Created by Okan Serdaroğlu on 15.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import Foundation

enum MusicianType {
    case Guitar
    case Drummer
    case Bassist
    case Violanist
}

class Musicians {
    
    var name : String = ""
    var age : Int = 0
    var instrument : String = ""
    var musicianType : MusicianType
    
    // initializer (Constructor)
    init(nameInit : String, ageInit : Int, instrumentInit : String,type:MusicianType) {
        print("Musicians created")
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        musicianType = type
    }
    
    func sing (){
        print("Çile")
    }
    
}
