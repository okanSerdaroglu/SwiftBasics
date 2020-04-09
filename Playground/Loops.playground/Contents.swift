import UIKit

var str = "Hello, playground"

var myNumber = 1

myNumber = myNumber + 1

myNumber += 1

// while loop

while (myNumber <= 10) {
    print(myNumber)
    myNumber += 1
}

var characterAlive = true

while (characterAlive == true) {
    print("character alive")
    characterAlive = false
}

3 < 5

// for loop

var myFruitArray = ["Banana","Apple","Orange"]

for fruit in myFruitArray {
    print(fruit)
}

var myNumbers = [10,20,30,40,50,60]

for number in myNumbers {
    print(number/5)
}

for myNum in 1...5 {
    print(myNum*5)
}
