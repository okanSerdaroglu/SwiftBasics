//
//  MusicianStruct.swift
//  AdvancedSwift
//
//  Created by Okan Serdaroğlu on 6.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import Foundation

struct MusicianStrcut {
    var name : String
    var age : Int
    var instrument : String
   
    // when you want to change variable value in a Struct you have to declare function as a mutating function
    mutating func happyBirthDay(){
        self.age += 1
    }
    
}
