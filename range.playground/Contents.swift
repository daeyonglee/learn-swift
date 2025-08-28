import UIKit

let myRange = 0...2
let mySecondRange = 0..<2
let myFriends = ["철수", "영희", "제임스", "수진"]

for index in mySecondRange {
    print("index: \(index)")
}


print(myFriends[myRange])

if mySecondRange.contains(1) {
    print("포함됨")
} else {
    print("포함안됨")
}
