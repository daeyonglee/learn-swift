import UIKit

for i in 0...5 {
    print("호호 i: \(i)")
}

for i in 0..<5 {
    print("호호 i: \(i)")
}

for i in 0..<5 where i % 2 == 0 {
    print("호호 i: \(i)")
}

var randomInts: [Int] = []

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
print("randomInts: \(randomInts)")
