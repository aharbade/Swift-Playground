//: [Previous](@previous)

import Foundation

// MARK: Merge Sort
func mergeSortExample(inputArray: [Int]) -> [Int] {
    var sortedArray: [Int] = []
    let midOfInputArray: Int = inputArray.count/2
    
    if inputArray.count > 1 {
        let leftSubArray = mergeSortExample(inputArray: Array(inputArray[0..<midOfInputArray]))
        let rightSubArray = mergeSortExample(inputArray: Array(inputArray[midOfInputArray..<inputArray.count]))
        
        var activeLeftIndex = 0
        var activeRightIndex = 0
        
        while ((activeLeftIndex < leftSubArray.count
            && activeRightIndex != rightSubArray.count)
            || (activeRightIndex < rightSubArray.count
                && activeLeftIndex != leftSubArray.count))  {
            if leftSubArray[activeLeftIndex] < rightSubArray[activeRightIndex] {
                // append the item from left sub array to the sorted array.
                sortedArray.append(leftSubArray[activeLeftIndex])
                activeLeftIndex += 1
            } else {
                // append the item from right sub array to the sorted array.
                sortedArray.append(rightSubArray[activeRightIndex])
                activeRightIndex += 1
            }
        }
        
        if activeLeftIndex < leftSubArray.count {
            sortedArray.append(contentsOf: leftSubArray[activeLeftIndex..<leftSubArray.count])
        } else if activeRightIndex < rightSubArray.count {
            sortedArray.append(contentsOf: rightSubArray[activeRightIndex..<rightSubArray.count])
        }
    } else {
        return inputArray
    }
    
    return sortedArray
}

let sortedArray = mergeSortExample(inputArray: [3,6,2,8,4,9,7,1,5])
print("Merge Sorted array is - \(sortedArray)")

// MARK: Insertion Sort
func performInsertionSort(source: [Int]) -> [Int] {
    
    var sorted: [Int] = []
    var unsorted = source
    sorted.append(unsorted[0])
    unsorted.remove(at: 0)
    var lastIndex = 0
    
    
    for item in unsorted {
        var indexToCompare = lastIndex
        repeat {
            if indexToCompare >= 0 && item >= sorted[indexToCompare]  {
                sorted.insert(item, at: indexToCompare+1)
                lastIndex += 1
                break
            } else {
                if indexToCompare == 0 {
                    sorted.insert(item, at: 0)
                    break
                }
            }
            indexToCompare -= 1
        } while (indexToCompare >= 0)
    }
    
    print(sorted)
    return sorted
}

print(performInsertionSort(source: [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]))
//: [Next](@next)
