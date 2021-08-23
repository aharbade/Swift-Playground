//: [<- Operators](@previous)

import Foundation


let firstHand = 10
let secondHand = 11

if firstHand + secondHand == 21 {
    print("BlackJack!")
} else {
    print("Way to go!")
}

// Switch Case
let weather = "Cold"

switch weather {
case "Sunny":
    print("Wear a sunscreen.")
case "Rain":
    print("Wear a raincoat.")
case "Cold":
    print("Wear a Jacket.")
    // fallthrough - enables you to execute the next case.
default:
    print("Enjoy the weather!")
}


//: [Loops ->](@next)
