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

/// TODO: This is causing infinite loop
//func pickingNumbers(a: [Int]) -> Int {
//    // Write your code here
//    let sortedArray = a.sorted()
//    var index = 0
//    var maxCount = 0
//
//    while index < sortedArray.count {
//        var subArray = [Int]()
//        let startIndex = index
//        for item in startIndex..<sortedArray.count {
//            if subArray.count == 0 {
//                subArray.append(sortedArray[index])
//            } else {
//                if sortedArray[item] - sortedArray[index] <= 1 {
//                    subArray.append(sortedArray[item])
//                    if sortedArray[item] != sortedArray[item - 1] {
//                        index = item
//                    }
//                } else {
//                    break
//                }
//            }
//        }
//
//        if maxCount < subArray.count {
//            maxCount = subArray.count
//        }
//    }
//
//    return maxCount
//}
//
//pickingNumbers(a: [1, 2, 2, 3, 1, 2])


//: [Next](@next)
