//: [<- Collections](@previous)

import Foundation

// Simple enum with multiple cases
enum Directions {
    case north
    case south
    case east
    case west
}

let north = Directions.north

// Enum with a type associated with it.
// This way enum will assign integer value to the first case starting from 0 and
// keep on increasing the value for the subsequent cases.
// In the below example, success will have integer value as 0, failure as 1 and
// unknown as 2.
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

// Enum can be assigned with its raw value as well. Raw value, in this case, is
// nothing but the integer value that is assigned to the particular case.
value = Status(rawValue: 2)!

// Enum with associated values
enum Activities {
    case bored
    case running(speed: Int)
    case walking(distance: Double)
    case pushups(count: Int)
    case writing(blog: String)
}

let swiftBlog = Activities.writing(blog: "Swift Enum")

switch swiftBlog {
case .bored:
    print("Getting bored")
case .running(let speed):
    print("Running with speed \(speed)")
case .walking(let distance):
    print("Walking for \(distance) miles")
case .pushups(let count):
    print("Doing \(count) push ups")
case .writing(let blog):
    print("Writing blog on \(blog)")
}

// Switch case with the range
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
//: [Closures ->](@next)
