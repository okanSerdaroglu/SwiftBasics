//
//  SuperMusician.swift
//  MusicianApp
//
//  Created by Okan Serdaroğlu on 15.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import Foundation

class SuperMusicians : Musicians {
    
    func singTwo() {
        print("sing Two")
    }
    
    override func sing() {
        super.sing()
        print("kirk is singing")
    }
    
}
