import UIKit

enum RecordType {
    case bool(Bool)
    case number(Int)
    case text(String)
}
              
let defaultRecord: [String: RecordType] = [
    "uid": .number(0),
    "exp": .number(100),
    "favourite": .bool(false),
    "title": .text("")
]

var template = defaultRecord
let record11Patch: [String: RecordType] = [
    "uid": .number(11),
    "title": .text("Common dictionary extensions")
]

extension Dictionary {
    mutating func merge<S:Sequence>(_ sequence: S) where S.Iterator.Element == (key:Key, value:Value) {
        sequence.forEach { self[$0] = $1 }
    }
    
    init<S:Sequence>(_ sequence: S) where S.Iterator.Element == (key:Key, value:Value) {
        self = [:]
        self.merge(sequence)
    }
    
    func mapValue<T>(_ transform: (Value) -> T ) ->[Key: T] {
        return Dictionary<Key, T>(map {($0, transform($1))})
    }
}

let record11PatchDic = Dictionary(record11Patch)
print(record11PatchDic.map { $1 })

let record11 = record11PatchDic.mapValue { record -> String in
    switch record {
    case .text(let title):
        return title
    case .number(let exp):
        return String(exp)
    case .bool(let favourite):
        return String(favourite)
    }
}

template.merge(record11Patch)

let record10Patch: [(key:String, value:RecordType)] = [
    (key: "uid", value: .number(10)),
    (key: "title", value: .text("Common dictionary extensions2"))
]

var template1 = defaultRecord
template1.merge(record10Patch)
