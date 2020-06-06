//
//  main.swift
//  AdvancedSwift
//
//  Created by Okan Serdaroğlu on 6.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import Foundation

let classJames = MusicianClass(nameInput: "James",
                               ageInput: 50,
                               instrumentInput: "Guitar")

print(classJames.age)

let structJames = MusicianStrcut(name: "James",
                                 age: 50,
                                 instrument: "Guitar")

print(classJames.age)

// you can use structs when you don't need inheritance and you don't need to do anything about objective C. Using structs is recommended without these cases



