//: [Enumerations](@previous)

import Foundation

let action = {
    print("This is an action closure.")
}


func perfromAction(action: () -> Void) {
    print("This is the start point of perfromAction.")
    action()
    print("This is the end point of perfromAction.")
}

action()
perfromAction(action: action)

//: [Next](@next)
