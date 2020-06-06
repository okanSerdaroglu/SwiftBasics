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

//print(classJames.age)

let structJames = MusicianStrcut(name: "James",
                                 age: 50,
                                 instrument: "Guitar")

//print(classJames.age)

// you can use structs when you don't need inheritance and you don't need to do anything about objective C. Using structs is recommended without these cases



classJames.age = 51
//print(classJames.age)

//structJames.age = 51 // you can not edit let defined struct property.Change it var
//print(structJames.age)

// REFERENCE vs VALUE

let copyOfClassJames = classJames

var copyOfStructJames = structJames

copyOfClassJames.age = 52
copyOfStructJames.age = 52

/*print(copyOfClassJames.age)
print(copyOfStructJames.age)

print(classJames.age)
print(structJames.age)*/

// Reference Types -> Class
// Copy -> Same object new reference -> 1 object + 2 reference

// Value Types -> Struct
// Copy -> new object -> 2 objects

// Function vs Mutating Function

/*print(classJames.age)
classJames.happyBirthday()

print(structJames.age)
print(structJames.age)*/

let myTuple = (1,3)
print(myTuple.0)

let myTuple2 = (1,3,5)
print(myTuple2.1)

let myTuple3 = ("Okan",32)

let myTuple4 = (10,[10,20,30])

print(myTuple4.1[2])

let predefinedTuple :(String,String)
predefinedTuple.0 = "Okan"
predefinedTuple.1 = "Serdaroglu"

print(predefinedTuple)

let newTuple = (name:"James",metallica:true)
print(newTuple.metallica)
print(newTuple.name)
