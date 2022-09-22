import UIKit

var array1: Array<Int> = Array<Int>()
var array2: [Int] = []
var array3 = array2

var threesInts = [Int](repeating: 3, count: 3)
var sixInts = threesInts + threesInts
var fiveInts = [1, 2, 3, 4, 5]

fiveInts.count
array1.isEmpty

fiveInts[2]
Array(fiveInts[0...2])
type(of: fiveInts[0..<2])

for value in fiveInts {
    print(value)
}

for (index, value) in fiveInts.enumerated() {
    print("\(index): \(value)")
}

fiveInts.forEach { print($0) }

array1.append(1)
array1 += [2, 3, 4]

array2 += array1
array3.forEach { print($0) }

array1.insert(0, at: array1.startIndex)

array1.remove(at: 4)
array1.removeLast()

array1.forEach { print($0) }
