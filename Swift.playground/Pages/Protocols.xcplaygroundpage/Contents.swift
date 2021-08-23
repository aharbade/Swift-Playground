//: [<- Class](@previous)

import Foundation

// Protocol is a description of a properties
// and method that a type must have
protocol Identifiable {
    var id: String {get set}
}

struct User: Identifiable {
    var id: String
}

func displayId(thing: Identifiable) {
    print("My id is \(thing.id)")
}

let user = User(id: "xyz")
displayId(thing: user)

// Protocol Inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(for days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {}

// Protocol Extensions
let pythons: [String] = ["Adam", "George"]
let beetles: [String] = ["Alex", "Martin", "Jen"]

extension Collection {
    func summarize() {
        print("We do have a name:")
        
        for person in self {
            print(person)
        }
    }
}

pythons.summarize()
beetles.summarize()
//: [Optionals ->](@next)
