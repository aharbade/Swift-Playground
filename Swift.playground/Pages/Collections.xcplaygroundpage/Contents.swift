//: [<- Variables](@previous)

import Foundation

// Swift has mainly 3 types of collections.
// 1. Array
// 2. Set
// 3. Dictionary
// Tuples can also be considered as a collection.

// Array - Immutable (Not modifiable array)
let pets = ["Puppy", "Kitten", "Mouse", "Parrot"]
// pets.append("Monkey") // error -> Immutable array is a constant array and
// can not be modified.

// Mutable Array
var flowers = ["Rose", "Lily", "Tulip"]
flowers.append("Orchid")

// Set - an unordered set of items
let colors = Set(["red", "blue", "green"])
// Duplicates are not allowed in the Set
let otherColors = Set(["red", "blue", "green", "blue", "red"])
//Set operations
let oddSet: Set = [1,3,5,7,9]
let evenSet: Set = [2,4,6,8,10]
let primeNumbers: Set = [2,3,5,7]

oddSet.union(evenSet)
oddSet.subtracting(evenSet)
oddSet.intersection(primeNumbers)
oddSet.symmetricDifference(evenSet)


// Tuples -
// Allows to save several values in a variable
// Might sound like Array but they are different
var name = (first: "Harry", last: "Potter")
name.first //prints the first item of the tuple
name.1 // prints the item at the 1st index in the tuple
// name = ("Harry", 23) // error - You can not change the type of the tuple once
// it is defined.
name = ("Hermione", "Granger")

// Dictionary
var person: [String: Any] = [
    "first": "Harry",
    "last": "Potter",
    "house": "Gryffindor",
]

person["last"]
person["middle"] // dictionary will retunr nil if the key doesn't exist in it.

// Creating empty collections
// Array
var cities = [String]()
var states = Array<String>()

// Dictionaries
var map = [String: String]()
var intent = Dictionary<String, Any>()

// Set
var set = Set<Int>()

//: [Enumerations -> ](@next)
