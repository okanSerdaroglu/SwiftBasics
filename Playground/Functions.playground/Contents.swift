import UIKit

var str = "Hello, playground"

// functions

func myFunction (){
    print("myFunction")
}

myFunction()

// input && output && return

func sumFunction (x:Int,y:Int) -> Int { // return int
    print(x+y)
    return x+y
}

var number = sumFunction(x: 24, y: 33)
print(number)

func logicFunction (a:Int,b:Int) -> Bool {
    return a>b ? true : false
}

logicFunction(a: 22, b: 11)
