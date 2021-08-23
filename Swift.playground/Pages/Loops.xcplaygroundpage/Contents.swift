//: [<- Conditions](@previous)

import Foundation

// For loop
let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "98", "Manderine"]
for album in albums {
    print("\(album) is available on the Apple Music.")
}

// While loop
var number = 1
while number < 20 {
    print(number)
    number += 1
}
print("End of While loop!")

// Repeat loop
var index = 0
repeat {
    print(index)
    index += 1
} while index < 20
print("End of Repeat loop!")

// Exit from the loop using break keyword
var countdown = 10
while countdown > 0 {
    print("Counting \(countdown)...")
    countdown-=1
    if countdown == 4 {
        print("I am bored, so exiting from the loop.")
        break
    }
}

// Exit from the nested loops
outerloop: for i in 0...10 {
    for j in (0...10) {
        let product = i * j
        print("Product is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerloop
        }
    }
}

// Skip the item using the continue keyword
for num in 0...10 {
    if num % 2 == 1 {
        continue
    }
    
    print(num)
}

//: [Next ->](@next)
