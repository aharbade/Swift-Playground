//: [<- Structs](@previous)

import Foundation

// Stored Property
var greeting = "Hello, playground"

// Computed Property
struct Sport {
    var name: String
    var isOlympicSport: Bool // Stored property
    
    var olympicStatus: String { // COmputed property
        if isOlympicSport == true {
            return "\(name) is an Olympic sport."
        } else {
            return "\(name) is not an Olympic Sport."
        }
    }
}

let chessBoxing = Sport(name: "ChessBoxing", isOlympicSport: false)
chessBoxing.olympicStatus

// Property Observers
struct Progress {
    var name: String
    var amount: Int {
        didSet {
            print("\(name) is \(amount)% complete.")
        }
    }
}

var downloadProgress = Progress(name: "Download", amount:0)
downloadProgress.amount = 10
downloadProgress.amount = 30
downloadProgress.amount = 70
downloadProgress.amount = 100

// Lazy Properties
struct FamilyTree {
    
    init() {
        print("Creating a family tree!")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        print("\(name) just born!")
        self.name = name
    }
}

var ed = Person(name: "Ed")
ed.name
ed.familyTree  // Since familyTree is a lazy property, it won't be initialized until this step.

// Static properties and methods
struct Student {
    static var classCount = 0
    var name: String
    
    init(name: String) {
        print("Adding new student \(name)")
        Student.classCount += 1
        self.name = name
    }
    
    static func printClassCount() {
        print("Class count is \(Student.classCount)")
    }
}

var eddy = Student(name: "Eddy")
Student.classCount
Student.printClassCount()
var taylor = Student(name: "Taylor")
Student.classCount
Student.printClassCount()
var harry = Student(name: "Harry")
Student.classCount
Student.printClassCount()


//: [Class ->](@next)
