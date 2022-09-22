import UIKit

var a = [1, 2, 3]
let copyA = a

func getBufferAddress<T>(array: [T])->String {
    return array.withUnsafeBufferPointer {
        return String(describing: $0)
    }
}

getBufferAddress(array: a)
getBufferAddress(array: copyA)
a.append(4)
getBufferAddress(array: a)
getBufferAddress(array: copyA)

let b = NSMutableArray(array: [1, 2, 3])
let copyB = b
let deepCopyB = b.copy() as! NSArray

b.insert(0, at: 0)
copyB
deepCopyB
