//
//  main.swift
//  MusicianApp
//
//  Created by Okan Serdaroğlu on 15.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import Foundation

print("Hello, World!")

let james = Musicians(nameInit: "James", ageInit: 50, instrumentInit: "Guitar", type: MusicianType.Guitar)


print("James age : \(james.age)")
print("James Type : \(james.musicianType)")
james.sing()
