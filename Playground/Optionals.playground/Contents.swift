import UIKit

var str = "Hello, playground"

var myName : String?

myName?.uppercased()

//myName!.uppercased() // ? means optional. ! says that value exactly not equals nil

// optionals : ? vs !

var myAge = "f"

var myInteger = (Int (myAge) ?? 4) * 5 // if myAge can not convert an int default value 4

if let myAge = Int(myAge){ // if myAge can convert an int go to condition else wrong input
    print(myAge*5)
} else {
    print("wrong input")
}
