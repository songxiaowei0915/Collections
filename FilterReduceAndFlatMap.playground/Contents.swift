import UIKit

var fibonacci = [0, 1, 1, 2, 3, 5]

extension Array {
    func myFilter(_ predicate: (Element)-> Bool) -> [Element] {
        var tmp: [Element] = []
        
        for value in self where predicate(value) {
            tmp.append(value)
        }
        
        return tmp
    }
    
    func reject(_ predicate: (Element)->Bool ) -> [Element] {
        return filter { !predicate($0) }
    }
    
    func allMatch(_ predicate: (Element)->Bool ) -> Bool {
        return !contains{ !predicate($0) }
    }
    
    func myReduce<T>(_ initial: T, _ next: (T, Element)->T ) -> T {
        var tmp = initial
        
        for value in self {
            tmp = next(tmp, value)
        }
        
        return tmp
    }
    
    func myFilter2(_ predicate: (Element)-> Bool) -> [Element] {
        return reduce([], {predicate($1) ? $0 + [$1] : $0})
    }
    
    func myMap2<T>(_ transform: (Element) -> T) -> [T] {
        return reduce([], { $0 + [transform($1)]})
    }
    
    func myFlatMap<T> (_ transform: (Element)->[T] ) -> [T] {
        var tmp: [T] = []
        
        for value in self {
            tmp.append(contentsOf: transform(value))
        }
        
        return tmp
    }
}

print(fibonacci.myMap2 { $0 + $0 })
print(fibonacci.myFilter2 { $0 % 2 == 0})
[2, 4, 6, 8].allMatch { $0 % 2 == 0}
fibonacci.myReduce(0, +)
fibonacci.myReduce("") { $0 + "\($1)" }

print(fibonacci.myFilter { $0 % 2 == 0 } )
print(fibonacci.contains { $0 % 2 == 0} )
print(fibonacci.reject { $0 % 2 == 0 } )

let animals = ["🐶", "🐱", "🐭", "🐼"]
let ids = [1, 2, 3, 4]
print(animals.myFlatMap { animal in
    return ids.map { id in
        (animal, id)
    }
})
