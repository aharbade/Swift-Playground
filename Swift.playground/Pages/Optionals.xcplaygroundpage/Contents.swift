//: [<- Protocols](@previous)

import Foundation

// Optional variable declaration
var age: Int? = nil

// Unwrapping the Optional
var name: String? = "Alex"

if let unwrapped = name {
    print("Hello \(unwrapped)!")
} else {
    print("Hey fellow!")
}

// Alternative to if-let is guard-let
func greet(name: String?) {
    guard let unwrapped = name else {
        print("Name hasn't been provided.")
        return
    }
    
    print("Hello \(unwrapped)!")
}

greet(name: "Andry")
greet(name: nil)

// Force Unwrapping - use with caution
// !!! Crash Operator
let str = "5"
let number = Int(str)!
//let inavlidNumber = Int("Five")! // This would crash the program.

// Implicitly unwrapped optional
var count: Int! = nil
// With the implicitly unwrapped optional, you always have unwrapped value
// from the optional. That lets you avoid if-let and guard-let.
// Impicit unwrapping is risky at the same time as it can crash the
// program if there is any nil value assigned to the variable.

// Nil coalescing
func username(id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(id: 2) ?? "Brandon Gooch"

// Optional chaining
let names = ["John", "Paul", "Mark"]
let uppercasedName = names.first?.uppercased()

// Optional try
enum GreetMessageError: Error {
    case invalidName
}
func greetMessage(name: String) throws -> String {
    if name.count == 0 {
        throw GreetMessageError.invalidName
    }
    
    return "Hello, \(name)!"
}

let message = try? greetMessage(name: "")
//let message = try! greetMessage(name: "") // This will crash the program.

// Failable initializers
struct Person {
    private let id: String
    init?(id: String) {
        if id.count != 9 {
            print("id must be 9 character long.")
            return nil
        }
        self.id = id
    }
}
