//: [<- Closures](@previous)

import Foundation

// Simple Struct example
struct Person {
    var name: String
}

var adam = Person(name: "Adam")
adam.name

adam = Person(name: "Adam Stuart")
adam.name
adam.name = "Adam W. Stuart"
adam.name

// Methods -
// 1. Functions inside Structs are called Method.
// 2. They are still defined using func keyword.

struct City {
    var population: Int
    
    func collectTaxes () -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

// Mutating methods
struct Employee {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var employee = Employee(name: "Adam")
employee.makeAnonymous()
employee.name

// initializers
struct Country {
    var name: String
    
    init() {
        name = "Anonymous"
        print("Creating a new instance!")
    }
}

var india = Country()
india.name = "India"

// Access Control
// You can define a property or method as public, internal, fileprivate or
// private to limit the scope of them.



//: [Properties ->](@next)
