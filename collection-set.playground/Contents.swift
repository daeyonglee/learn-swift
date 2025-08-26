import UIKit

// array와 비슷하지만 중복불가
var myNumberSet = Set<Int>()
myNumberSet.insert(1)
myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)

print("myNumberSet count: \(myNumberSet.count)")

// 배열과 다르게 순서는 보장안됨
for item in myNumberSet {
    print("item: \(item)")
}

// 그 외에도 콜렉션 (배열, 셋, 딕셔너리, 튜플)등이 가지고 있는 기본 메소드 제공
var myFriends: Set<String> = ["a", "b", "c"]
if myFriends.contains("b") {
    print("b를 가지고 있습니다.")
}

if let indexToRemove = myFriends.firstIndex(of: "b") {
    myFriends.remove(at: indexToRemove)
}

if !myFriends.contains("b") {
    print("b가 없다.")
}
