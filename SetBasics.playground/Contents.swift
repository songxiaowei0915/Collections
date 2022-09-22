import UIKit

var vowel: Set<Character> = ["a", "e", "i", "o", "u"]

vowel.count
vowel.isEmpty

vowel.contains("a")
type(of: vowel.remove("a"))
vowel
vowel.insert("a")
vowel.insert("a")
vowel

for character in vowel.sorted() {
    print(character)
}

vowel.forEach { print($0) }
