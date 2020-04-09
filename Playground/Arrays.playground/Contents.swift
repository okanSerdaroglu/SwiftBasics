import UIKit

var str = "Hello, playground"

// Array

var myFavouriteMovies = ["Davaro","Kibar Feyzo","Korkusuz Korkak",5] as [Any]

// as -> casting
// any -> any

myFavouriteMovies[0] // can not get methods because of any type

var myStringArray = ["test","test1","test2","test3"]

myStringArray[myStringArray.count - 1]
myStringArray.last

myStringArray.sort() // alphabetically sorts

var myNumberArray = [1,2,3,4,5,6]
myNumberArray

// Set

// set is unordered collection. There is no order. There is no index here

var mySet : Set = [1,2,3,4,5]

mySet.first

var internetArray = [1,1,2,3,4,1,2,2,5]

var myInternetSet = Set(internetArray)

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]
var mySet3 : Set = mySet1.union(mySet2)
print(mySet3)
