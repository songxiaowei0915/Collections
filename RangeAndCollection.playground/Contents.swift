import UIKit

1..<5
5..<5
1..<Int.max

1...5
5...5
1...Int.max

for i in 1...5 {
    print(i)
}

for i in stride(from: 1.0, to: 5.0, by: 1.0) {
    print(i)
}

for i in stride(from: 1.0, through: 5.0, by: 1.0) {
    print(i)
}
