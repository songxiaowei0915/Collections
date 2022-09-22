import UIKit

var a = [1, 2, 3]
type(of: a[1])

for (index, value) in a.enumerated() {
    print("\(index): \(value)")
}

let oneIndex = a.firstIndex { $0 == 1}
oneIndex
type(of: oneIndex)
a[oneIndex!]

print(a.filter { $0 % 2 == 0})

a.first
type(of: a.last)
type(of: a.removeLast())
type(of: a.popLast())
a


