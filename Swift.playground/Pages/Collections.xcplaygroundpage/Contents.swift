//: [Strings](@previous)

import Foundation

//Swift has 3 types of collections.
//Array
//Dictionary
//Set

// MARK: Array

//constant array
let directions = ["east", "west", "north", "south"]

//access array element using its index
directions[1] //west

//variable array
var cousins = ["aman", "mahi", "saurabh", "sonal"]
cousins.append("nikita")

//another way of creating an array
var countries = [String]()
countries.append("India")
countries.append("USA")
countries.append("Australia")


// MARK: Set
struct Person : Hashable {
    var name: String
    var sirname: String
    var age: Int
}

var personSet = Set<Person>()

let person1 = Person(name: "Anup", sirname: "Harbade", age: 30)
let person2 = Person(name: "Ruchita", sirname: "Harbade", age: 28)

personSet.insert(person1)
personSet.insert(person2)
print(personSet)


//Set operations
let oddSet: Set = [1,3,5,7,9]
let evenSet: Set = [2,4,6,8,10]
let primeNumbers: Set = [2,3,5,7]

oddSet.union(evenSet)
oddSet.subtracting(evenSet)
oddSet.intersection(primeNumbers)
oddSet.symmetricDifference(evenSet)

// MARK: Dictionary
let dict = [1:"firstname", 2:"lastname", 3:"age"]
dict[1]
for item in dict.keys {
    print((dict[item])!)
}

//: [Enumerations](@next)
