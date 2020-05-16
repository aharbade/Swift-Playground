//: [Previous](@previous)

import Foundation

// MARK: Problem Solving
func miniMaxSum(arr: [Int]) -> Void {
    
    let sum = arr.reduce(0, {$0 + $1})
    var minSum: Int?
    var maxSum: Int?
    for item in arr {
        let diff = sum - item
        if let min = minSum {
            if min > diff {
                minSum = diff
            }
        } else {
            minSum = diff
        }
        
        if let max = maxSum {
            if  max < diff {
                maxSum = diff
            }
        } else {
            maxSum = diff
        }
    }
    
    print("\(minSum ?? 0) \(maxSum ?? 0)")
    
    let sortedArr = arr.sorted()
    let min = sortedArr[0...sortedArr.count-2].reduce(0, {$0 + $1})
    let max = sortedArr[1...sortedArr.count-1].reduce(0, {$0 + $1})
    
    print("\(min) \(max)")
    
}

miniMaxSum(arr: [1,2,3,4,5])
miniMaxSum(arr: [15,26,37,84,56])
miniMaxSum(arr: [100,1209,138,14,5])


func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here

    return grades.map{
        if $0 < 38 {
            return $0
        } else {
            return $0 + (5 - $0%5)
        }
    }

}

print(gradingStudents(grades: [4, 73, 67, 38, 33]))



func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {

    if (v2 >= v1) || ((x1 - x2) % (v2 - v1) != 0){
        return "NO"
    } else {
        return "YES"
    }
}

kangaroo(x1: 5, v1: 4, x2: 15, v2: 4)


// Complete the findDigits function below.
func findDigits(n: Int) -> Int {
    
    var count = 0
    
    var number = n
    
    while number > 0 {
        let remainder = number%10
        if remainder > 0 && n%remainder == 0 {
            count += 1
        }
        number = number/10
    }
    
    
    return count
}

findDigits(n: 1012)
findDigits(n: 101245)
findDigits(n: 12)

// Complete the cutTheSticks function below.
func cutTheSticks(arr: [Int]) -> [Int] {

    var stickCounts = [Int]()
    stickCounts.append(arr.count)
    
    var subArray: [Int] = arr.sorted()
    while subArray.count > 1 {
        let first = subArray.first!
        var filteredArray: [Int] = []
        for index in 1..<subArray.count {
            let diff = subArray[index] - first
            if diff != 0 {
                filteredArray.append(diff)
            }
        }
        stickCounts.append(filteredArray.count)
        subArray = filteredArray
    }
    
    return stickCounts
}

cutTheSticks(arr: [5, 4, 4, 2, 2, 8])
cutTheSticks(arr: [1, 2, 3, 4, 3, 3, 2, 1])
cutTheSticks(arr: [8, 8, 14, 10, 3, 5, 14, 12])

func addressOf(_ o: UnsafeRawPointer) -> String {
    let addr = Int(bitPattern: o)
    return String(format: "%p", addr)
}

var dict = [1:1, 2:1, 3:4]
print(addressOf(&dict))
dict.removeValue(forKey: 1)
print(addressOf(&dict))
print(dict)
dict.removeValue(forKey: 2)
print(dict)
dict.updateValue(5, forKey: 7)
print(addressOf(&dict))
var dict1 = dict
print(addressOf(&dict1))

print(dict)



var arr = [1,2,3,4]
print(addressOf(&arr))
var arr1 = arr
print(addressOf(&arr1))
arr1.append(5)
print(addressOf(&arr1))
arr1.append(6)
print(addressOf(&arr1))
arr1.remove(at: 5)
print(addressOf(&arr1))


// Complete the sockMerchant function below.
func sockMerchant(n: Int, ar: [Int]) -> Int {
    var dictionary: [Int:Int] = [Int:Int]()

    var totalPairs = 0;
    for item in ar {
        if let _ = dictionary[item] {
            totalPairs += 1
            dictionary.removeValue(forKey: item)
        } else {
            dictionary.updateValue(1, forKey: item)
        }
    }

    return totalPairs
}



sockMerchant(n: 10, ar: [1,2,3,4,5,6,7,8,9,10])
sockMerchant(n: 10, ar: [1,2,2,4,4,4,7,8,9,10])
sockMerchant(n: 10, ar: [10,20, 20, 10, 10, 30, 50, 10, 20])
sockMerchant(n: 10, ar: [1,1,1,1,2,2,2,3,3,2])

func countingValleys(n: Int, s: String) -> Int {

    var seaLevel = 0
    var valleyCount = 0

    for step in s {
        if step == "U" {
            seaLevel += 1

            if seaLevel == 0 {
                valleyCount += 1
            }

        } else if step == "D" {
            seaLevel -= 1
        }
    }

    return valleyCount

}


countingValleys(n: 8, s: "UDDDUDUU")
countingValleys(n: 8, s: "DDUUUUDD")
countingValleys(n: 8, s: "DUDUDUDUDDUU")


func jumpingOnClouds(c: [Int]) -> Int {

    var currentCloudIndex = 0
    var numberOfJumps = 0
    while currentCloudIndex < c.count - 1  {
        if (currentCloudIndex + 2 < c.count)
            && (c[currentCloudIndex + 2] == 0) {
            currentCloudIndex += 2
            numberOfJumps += 1
        } else if (currentCloudIndex + 1 < c.count)
            && (c[currentCloudIndex + 1] == 0) {
            currentCloudIndex += 1
            numberOfJumps += 1
        } else {
            break;
        }
    }

    return numberOfJumps
}

print(jumpingOnClouds(c: [0,0, 1, 0, 0, 1, 0, 1, 0, 1]))

func repeatedString(s: String, n: Int) -> Int {

    var repreatedStringCount = 0
    var extraCount = 0

    var multiplier = 0
    var mod = 0

    var subString = ""

    if s.count >= n {
        multiplier = 1
        subString = String(s.prefix(n))
    } else {
        multiplier = n / (s.count)
        mod = n % (s.count)
        subString = s
    }

    for index in subString.enumerated() {
        if index.element == "a" {
            repreatedStringCount += 1

            if mod > 0 && index.offset < mod  {
                extraCount += 1
            }
        }
    }

    if multiplier > 1 {
        repreatedStringCount = repreatedStringCount * multiplier + extraCount
    }

    return repreatedStringCount
}


repeatedString(s: "aba", n: 10)
repeatedString(s: "a", n: 1000000000000)
repeatedString(s: "abababcabaaaaba", n: 10)



// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {

    if a.count == d {
        return a
    }

    let loopUntil = d > a.count/2 ? (a.count - d) : d

    var copiedArray = a
    for _ in 0..<loopUntil {
        if d > a.count/2 {
            let element = copiedArray.removeLast()
            copiedArray.insert(element, at: 0)
        } else {
            let element = copiedArray.removeFirst()
            copiedArray.append(element)
        }
    }
    return copiedArray

}

rotLeft(a: [1,2, 3, 4, 5], d: 4)
rotLeft(a: [1,2, 3, 4, 5], d: 2)

func compareTriplets(a: [Int], b: [Int]) -> [Int] {

    var aScore = 0
    var bScore = 0

    for index in 0..<a.count {
        if a[index] > b[index] {
            aScore += 1
        } else if a[index] < b[index] {
            bScore += 1
        }
    }

    return [aScore, bScore]
}
compareTriplets(a: [5, 6, 7], b: [3, 6 ,10])


func permutationEquation(p: [Int]) -> [Int] {

    var output: [Int] = [Int]()
    output.reserveCapacity(p.count)

    for x in 1...p.count {
        let firstPermutation = p.firstIndex(of: x)! + 1
        let secondPermutation = p.firstIndex(of: firstPermutation)! + 1
        output.append(secondPermutation)
    }

    return output
}

permutationEquation(p: [2,3,1])
permutationEquation(p: [4,3,5,1,2])


func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {

    let range = s...t

    let applesOnHome = apples.filter {
        range.contains(a+$0)
    }

    let orangesOnHome = oranges.filter {
        range.contains(b+$0)
    }

    print(applesOnHome.count)
    print(orangesOnHome.count)

}

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    /*
     * Write your code here.
     */

    var totalCost = -1

    for keyboard in keyboards {
        for drive in drives {
            let cost = keyboard + drive
            if cost <= b {
                if totalCost < cost {
                    totalCost = cost
                }
            }
        }
    }

    return totalCost
}

getMoneySpent(keyboards: [3,1], drives: [5,2,8], b: 10)
getMoneySpent(keyboards: [5], drives: [4], b: 5)


func catAndMouse(x: Int, y: Int, z: Int) -> String {
    if abs(z-y) < abs(z-x) {
        return "Cat B"
    } else if abs(z-y) == abs(z-x) {
        return "Mouse C"
    } else {
        return "Cat A"
    }

}

print(catAndMouse(x: 1, y: 2, z: 3))
print(catAndMouse(x: 1, y: 3, z: 2))

// Complete the designerPdfViewer function below.
func designerPdfViewer(h: [Int], word: String) -> Int {
    let alphabets = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var alphabetDict: [String:Int] = [:]
    for index in 0..<h.count {
        alphabetDict[alphabets[index]] = h[index]
    }
    var maxHeight = 0
    for character in word {
        if let value = alphabetDict[String(character)] {
            if maxHeight < value {
                maxHeight = value
            }
        }
    }
    return maxHeight * word.count
}

designerPdfViewer(h: [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7], word: "zaba")
designerPdfViewer(h: [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], word: "abc")


func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {

    let noOfRotations = k%a.count

    var aCopy = a
    let slice = aCopy.suffix(noOfRotations)
    aCopy.removeLast(noOfRotations)
    aCopy.insert(contentsOf: slice, at: 0)

    var modified: [Int] = []
    modified.reserveCapacity(queries.count)

    for index in queries {
        modified.append(aCopy[index])
    }

    return modified
}

circularArrayRotation(a: [3,4,5], k: 2, queries: [1,2])
circularArrayRotation(a: [1,2,3], k: 2, queries: [0,1,2])


func hurdleRace(k: Int, height: [Int]) -> Int {
    let sortedHeights = height.sorted()
    let minDoses = sortedHeights.last! - k
    return minDoses > 0 ? minDoses : 0
}

hurdleRace(k:4 , height: [1,6,3,5,2])
hurdleRace(k:7, height:  [2,5, 4, 5, 2])


// Complete the kaprekarNumbers function below.
func kaprekarNumbers(p: Int, q: Int) -> Void {
    
    var hasKaprekarNumber = false
    
    for number in p...q {
        let square = number * number
        let numberString = String(number)
        let squareString = String(square)
        
        let squarePostSubString = squareString.suffix(numberString.count)
        let squarePreSubString = squareString.prefix(squareString.count - squarePostSubString.count)
        
        let sum: Int = (Int(String(squarePreSubString)) ?? 0) + (Int(String(squarePostSubString)) ?? 0)
        
        if sum == number {
            hasKaprekarNumber = true
            print(number, terminator: "")
            if number != q {
                print(" ", terminator: "")
            }
        }
    }
    
    if hasKaprekarNumber == false {
        print("INVALID RANGE")
    }
}

kaprekarNumbers(p: 1, q: 100)

// Complete the utopianTree function below.
func utopianTree(n: Int) -> Int {

    var height = 1

    if n > 0 {
        for index in  1...n {
            if index%2 == 0 {
                // increase the height by 1
                height += 1

            } else {
                // double the height
                height *= 2
            }
        }
    }


    return height

}

utopianTree(n: 1)


/// Complete the appendAndDelete function below.
extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
    
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        let end = index(startIndex, offsetBy: min(self.count, range.upperBound))
        return String(self[start..<end])
    }

    subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
         return String(self[start...])
    }
}

// MARK: This is not a viable solution for some test cases.
// This logic needs to work upon.
//func appendAndDelete(s: String, t: String, k: Int) -> String {
//
//    var isPossible = "No"
//    let loopCount = s.count > t.count ? t.count : s.count
//    var mismatchedIndex = -1
//
//    for index in 0..<loopCount {
//        if s[index] != t[index] {
//            mismatchedIndex = index
//            break
//        }
//    }
//
//    let sLengthRemain = s.count - mismatchedIndex
//    let tLengthRemain = t.count - mismatchedIndex
//
//    var outputString = s[0..<mismatchedIndex]
//    var noOfOperations = k
//
//    if sLengthRemain > 0 && noOfOperations > sLengthRemain {
//        noOfOperations -= sLengthRemain
//    }
//
//    while noOfOperations > 0 {
//        if noOfOperations > tLengthRemain {
//            noOfOperations = tLengthRemain
//        } else if noOfOperations == tLengthRemain {
//            outputString.append(t[mismatchedIndex..<t.count])
//            noOfOperations -= tLengthRemain
//
//            if outputString == t {
//                isPossible = "Yes"
//            }
//            break
//        } else if noOfOperations < tLengthRemain {
//            outputString.append(t[mismatchedIndex..<(tLengthRemain - sLengthRemain)])
//            noOfOperations -= (tLengthRemain - sLengthRemain)
//
//            if outputString == t {
//                isPossible = "Yes"
//            } else {
//                break
//            }
//
//        }
//    }
//
//    return isPossible
//
//}
//
//appendAndDelete(s: "hackerhappy", t: "hackerrank", k: 9)
//appendAndDelete(s: "aba", t: "aba", k: 7)
//appendAndDelete(s: "ashley", t: "ash", k: 2)

func pickingNumbers(a: [Int]) -> Int {
    let sortedArray = a.sorted()
    
    var maxCount = 0
    var startIndex = 0
    
    while startIndex < sortedArray.count {
        var subArray: [Int] = []
        subArray.append(sortedArray[startIndex])
        var updatedIndex: Int?
        
        for index in startIndex+1..<sortedArray.count {
            if abs(sortedArray[startIndex] - sortedArray[index]) <= 1 {
                subArray.append(sortedArray[index])
                if updatedIndex == nil && sortedArray[startIndex] != sortedArray[index] {
                    updatedIndex = index
                }
            } else {
                if updatedIndex == nil{
                    updatedIndex = index
                }
                break
            }
        }
        
        if let updatedIndex = updatedIndex {
            startIndex = updatedIndex
        } else {
            startIndex = sortedArray.count
        }
        
        if subArray.count > 1 && maxCount < subArray.count {
            maxCount = subArray.count
        }
    }
    return maxCount
}

pickingNumbers(a: [7,12,13,19,17,7,3,18,9,18,13,12,3,13,7,9,18,9,18,9,13,18,13,13,18,18,17,17,13,3,12,13,19,17,19,12,18,13,7,3,3,12,7,13,7,3,17,9,13,13,13,12,18,18,9,7,19,17,13,18,19,9,18,18,18,19,17,7,12,3,13,19,12,3,9,17,13,19,12,18,13,18,18,18,17,13,3,18,19,7,12,9,18,3,13,13,9,7])
pickingNumbers(a: [4, 6, 5, 3, 3, 1])
pickingNumbers(a: [4, 6, 8, 10, 12, 14])


func beautifulDays(i: Int, j: Int, k: Int) -> Int {

    var daysCount = 0
    
    for day in i...j {
        let beautifulDay = abs(day-reverseANumber(number: day))%k == 0 ? true : false
        if beautifulDay == true {
            daysCount += 1
        }
    }
    
    return daysCount
}

func reverseANumber(number: Int) -> Int {
    var reverse = 0
    var n = number
    while(n != 0)
    {
      reverse = reverse * 10
      reverse = reverse + n%10
      n = n/10;
    }
    
    return reverse
}

beautifulDays(i: 20, j: 23, k: 6)

// Complete the breakingRecords function below.
func breakingRecords(scores: [Int]) -> [Int] {
    
    var highestScore = scores.first ?? 0
    var lowestScore = scores.first ?? 0
    var highestScoreBeatCount = 0
    var lowestScoreBeatCount = 0
    
    for index in 1..<scores.count {
        let score = scores[index]
        
        if score > highestScore {
            highestScore = score
            highestScoreBeatCount += 1
        }
        
        if score < lowestScore {
            lowestScore = score
            lowestScoreBeatCount += 1
        }
    }
    
    return [highestScoreBeatCount, lowestScoreBeatCount]

}

breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])
breakingRecords(scores: [3, 4, 21, 36, 10, 28, 35, 5, 24, 42])

func isPerfectSquareInt(square: Int) -> Bool {
    
    let sqrt = Double(square).squareRoot()
    let rounded = sqrt.rounded()
    return (sqrt == rounded)
}

isPerfectSquareInt(square: 3)
isPerfectSquareInt(square: 9)
isPerfectSquareInt(square: 225)
isPerfectSquareInt(square: 35)
isPerfectSquareInt(square: 2405601)



// Complete the squares function below.
func squares(a: Int, b: Int) -> Int {
    var squareCount = 0
    var number = a
    for num in a...b {
        let sqrt = Double(num).squareRoot()
        let rounded = sqrt.rounded()
        if (sqrt == rounded) {
            squareCount += 1
            number = num
            break
        }
    }
    
    if squareCount > 0 {
        while number < b {
            var sqrt = Int(Double(number).squareRoot())
            sqrt += 1
            let square = sqrt * sqrt
            if square <= b {
                squareCount += 1
            }
            number = square
        }
    }
    return squareCount
}

func squares2(a: Int, b: Int) -> Int {
    var squareCount = 0
    for number in a...b {
        let sqrt = Double(number).squareRoot()
        let rounded = sqrt.rounded()
        if (sqrt == rounded) {
            squareCount += 1
        }
    }
    
    return squareCount
}

squares(a: 3, b: 64)
squares2(a: 3, b: 64)

// Complete the equalizeArray function below.
func equalizeArray(arr: [Int]) -> Int {
    let sorted = arr.sorted()
    var currentNumber = sorted.first
    var removals = sorted.count - 1
    var minRemovals = removals
    
    for index in 1..<sorted.count {
        let number = sorted[index]
        if number == currentNumber {
            removals -= 1
            if minRemovals > removals {
                minRemovals = removals
            }
        } else {
            currentNumber = number
            removals = sorted.count - 1
        }
    }
    return minRemovals
}

equalizeArray(arr: [3,3,2,1,3])
equalizeArray(arr: [1,2,3,4,5])
equalizeArray(arr: [1,1,2,3,4,3,3,5,4])

//: [Next](@next)
