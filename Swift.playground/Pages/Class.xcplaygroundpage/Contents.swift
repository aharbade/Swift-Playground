//: [Properties](@previous)

import Foundation

// Class and Structs have 5 main differences

// 1. Unlike Struct, Classes don't have memberwise intializers.
// We have to define the class init method on our own.
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

// 2. Classes has inheritance.
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}

// Child classes can override the methods from the parent class
let poodle = Poodle(name: "Sober")
poodle.makeNoise()

// final keyword restricts to inherit from the class
final class Country {
    
}

// 3. structs are copied when assigned whereas classes are referenced.
class Singer {
    var name: String = "Taylor Swift"
}

let singer = Singer()
singer.name
print(singer.name)

let singerCopy = singer
singerCopy.name = "Justine Beiber"
print(singer.name)

// 4. Classes can have de-initializer

// 5. If you have constant struct with a variable property,
// that property can not be changed. Whereas, if you have
// constant class with a variable property, that property
// can be changed.

//: [Next](@next)
