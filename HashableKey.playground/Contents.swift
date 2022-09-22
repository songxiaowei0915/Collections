import UIKit
import Foundation

struct Account {
    var type: Int
    var alias: String
    var createAt: Date
    
//    let INT_BIT = (Int)(CHAR_BIT) * MemoryLayout<Int>.size
//
//    func bitwiseRotate(value: Int, bits: Int) -> Int {
//        return (value << bits) | (value >> (INT_BIT-bits))
//    }
}

extension Account: Hashable {
//    var hashValue: Int {
//        return bitwiseRotate(value:type.hashValue, bits: 10)  ^ alias.hashValue ^ createAt.hashValue
//    }
    
    func hash(into hasher: inout Hasher) {
        print("in hash")
        hasher.combine(type)
        hasher.combine(alias)
        hasher.combine(createAt)
    }
}

//extension Account: Equatable {
//    static func == (lhs: Account, rhs: Account) -> Bool {
//        return lhs.type == rhs.type && lhs.alias == rhs.alias && lhs.createAt == rhs.createAt
//    }
//}

var now = Date.now
var data1 : [Account: Int] = [Account(type: 10, alias: "hello",createAt:now): 100]
var data2 : [Account: Int] = [Account(type: 10, alias: "hello",createAt:now): 100]

data1 == data2
