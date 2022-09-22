import UIKit

var fibonacct = [0, 1, 1, 2, 3, 5]

var squares = [Int]()

for value in fibonacct {
    squares.append(value * value)
}
squares

let constSquares = fibonacct.map { $0 * $0 }
constSquares

extension Array {
    func myMap<T> (_ transform: (Element)-> T )-> [T] {
        var tmp: [T] = []
        tmp.reserveCapacity(count)
        for (_,value) in enumerated() {
            tmp.append(transform(value))
        }
        
        return tmp
    }
}

print(fibonacct.myMap { $0 * $0 })

fibonacct.min()
type(of: fibonacct.max())

print(fibonacct.filter { $0 % 2 == 0})

print(fibonacct.elementsEqual([0, 1, 2], by: { $0 == $1}))

fibonacct.starts(with: [0, 1, 1])

fibonacct.forEach { print($0) }

fibonacct.sorted(by: >)


let pivot = fibonacct.partition(by: {$0 < 1})
fibonacct[0 ..< pivot]
fibonacct[pivot ..< fibonacct.endIndex]
pivot

fibonacct.reduce(0, + )

extension Array {
    func accumulater<T> (_ initial: T, _ nextAccumulater: (T, Element)->T ) -> [T] {
        var sum = initial
        
        return map {
            sum = nextAccumulater(sum,$0)
            return sum
        }
    }
}

fibonacct
fibonacct.accumulater(0, +)

