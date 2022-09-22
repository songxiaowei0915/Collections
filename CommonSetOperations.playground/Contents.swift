import UIKit

var setA: Set = [1, 2, 3, 4, 5, 6]
var setB: Set = [4, 5, 6, 7, 8, 9]

let interSectAB = setA.intersection(setB)
let unionAB = setA.union(setB)
let symmetricDiffAB = setA.symmetricDifference(setB)
let aSubtractB = setA.subtracting(setB)

setA.formIntersection(setB)
setA.formUnion(setB)

extension Sequence where Iterator.Element : Hashable {
    func unique()-> [Iterator.Element] {
        var tmp: Set<Iterator.Element> = []
        
        return filter {
            if tmp.contains($0) {
                return false
            }else{
                tmp.insert($0)
                return true
            }
        }
    }
}


[1, 1, 2, 3, 4, 3, 2, 4].unique()

let oneToSix: IndexSet = [1, 2, 3, 4, 5, 6]

let hw = "Hello world!"

let numbers = CharacterSet(charactersIn: "123456789")
let letters = CharacterSet.letters

hw.rangeOfCharacter(from: numbers)
hw.rangeOfCharacter(from: letters)
