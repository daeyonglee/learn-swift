import UIKit


// stride를 통해 범위안에 반복 처리 가능
for countdown in stride(from: 4, to: 0, by: -1) {
    print("\(countdown)")
}


// 배열 extension
extension Array {
    func chunks(_ size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}


let numbers = Array(1...10)
let result = numbers.chunks(3)

print(result)

