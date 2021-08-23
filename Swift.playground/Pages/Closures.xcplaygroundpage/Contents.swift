//: [Functions](@previous)

import Foundation

// Function can be used as any other types like Strings, Int etc.
// Closure is a function but with a different syntax

// Simple Closure example
let action = {
    print("This is an action closure.")
}
action()

// Closure with a parameter
let square = { (number: Int) in
    print("Square of \(number) is \(number * number)")
}

square(4)

// Returning value from CLosure
let getSquareOfANumber = { (number: Int) -> Int in
    return number * number
}

let number = 5
let squareOfANumber = getSquareOfANumber(number)
print("Square of a \(number) is \(squareOfANumber)")

// Closure as a function parameter
func perfromAction(action: () -> Void) {
    print("This is the start point of performAction.")
    action()
    print("This is the end point of performAction.")
}
perfromAction(action: action)

// Trailing Closures
func travel(_ action: () -> Void) {
    print("I am starting a travel.")
    action()
    print("I have reached.")
}

travel {
    print("I am travelling in my car.")
}

// Closures with a parameter
func travel(action: (String) -> Void) {
    print("I am starting a travel.")
    action("London")
    print("I have reached.")
}

travel { location in
    print("I am travelling to \(location) in my car.")
}

// Returning a vakue from the closure
func travel (action: (String) -> String) {
    print("I am starting a travel")
    print(action("London"))
    print("I have reached")
}

travel {
    "I am travelling to \($0) in my Car."
}

// Returning a closue
func travel () -> (String) -> Void {
    return {
        print("I am going to \($0)")
    }
}

let result = travel()
result("London")


//: [Structs](@next)
