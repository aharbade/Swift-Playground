//: [Loops](@previous)

import Foundation

// Simple function example
func printHelp() {
    let message = "This is a helper function to print message on the console."
    print(message)
}

printHelp()

//Function with a single parameter
func square(of number: Int) {
    let square = number * number
    print("Square of \(number) is \(square)")
}

square(of:4)

// Function with multiple parameters and a return type
func calculateTip(on amount:Double, tipPercentage: Double) -> Double {
    return amount * tipPercentage / 100
}

calculateTip(on: 25, tipPercentage: 50)

// Function with a default value to the parameter
func offerGiftCard(_ value: Int = 50) {
    if value == 50 {
        print("We are pleased to offer a Gift Card worth $\(value)")
    } else {
        print("Hurray! You won a gift card worth $\(value)")
    }
}

offerGiftCard()
offerGiftCard(60)

// Variadic functions
func printSquare(of numbers: Int...) {
    for number in numbers {
        print("Square of \(number) is \(number * number)")
    }
}

printSquare(of: 1, 3, 5, 7, 9)
printSquare(of: 0, 2, 4, 6, 8)

// Throwing function
enum PasswordError: Error {
    case obvious
}

func validatePassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    var password = "p@ssw0rd"
    try validatePassword(password)
    print("\(password) is an acceptable password.")
    
    password = "password"
    try validatePassword(password)
    print("\(password) is an acceptable password.")
} catch {
    print("Password is too obvious.")
}

// inout parameter
func growTheNumber(_ number: inout Int) {
    number = number * 2
}

var number = 2
for _ in 0..<5 {
    growTheNumber(&number)
}
print(number)
//: [Closures](@next)
