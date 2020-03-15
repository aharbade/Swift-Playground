//: [Collections](@previous)

import Foundation

enum Status: Int {
    case success, failure, unknown
}

var value = Status.failure

switch value {
case .success:
    print("This is a success case")
case .failure:
    print("This is a failure case")
case .unknown:
    print("This is an unknown case")
}


value = Status(rawValue: 2)!

let marks = 85

func printScore(score: Int) {
    switch score {
    case 0..<35:
        print("You have failed the exam.")
    case 35...60:
        print("You have just passed on the boundry")
    case 61...75:
        print("You have passed the exam with the distinction")
    case 76...100:
        print("You have topped the exam")
    default:
        print("You have got invalid number of marks")
    }
}

printScore(score: 35)
printScore(score: 29)
printScore(score: 65)
printScore(score: -1)
printScore(score: 100)

//: [Closures](@next)
