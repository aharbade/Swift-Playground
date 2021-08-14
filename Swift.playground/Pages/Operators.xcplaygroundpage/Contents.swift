//: [Enumerations](@previous)

import Foundation

// Arithematic Operators in Swift (+, -, *, /)
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

// Operator Overloading
let string = "Hello"
let greeting = string + "World"

let couple = ["Alex", "Alice"]
let family = couple + ["Andy"]

// Compound Operators
var score = 95
score -= 5

var quote = "America is "
quote += "a great country!"

// Comparison Operators
firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

let firstName = "Alex"
let lastName = "Stuart"
firstName < lastName

// Ternary Operators
let firstCard = 10
let secondCard = 11
print(firstCard == secondCard ? "Cards are same" : "Cards are different")

// Range Operators
score = 85
switch score {
case 0..<50:
    print("You failed miserably.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

//: [Conditions](@next)
