import UIKit

enum RecordType {
    case bool(Bool)
    case number(Int)
    case text(String)
}
              
let record11: [String: RecordType] = [
    "uid": .number(11),
    "exp": .number(100),
    "favourite": .bool(false),
    "title": .text("Dictionary basics")
]

record11["uid"]
record11["exp"]
record11["favourite"]
record11["title"]

type(of: record11["invalid"])

record11.count
record11.isEmpty
record11.keys.sorted().forEach { print("\($0): \(record11[$0]!)") }
record11.values.forEach { print($0) }

var record10 = record11
record10["favourite"] = .bool(true)
record11["favourite"]

record10.updateValue(.bool(false), forKey: "favourite")
record10["favourite"]

record10["watchLater"] = .bool(false)
record10

record10["watchLater"] = nil
record10

for (key,value) in record10 {
    print("\(key): \(value)")
}

record11.forEach {print("\($0): \($1)")}
