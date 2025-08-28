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


let totalFriends = ["철수", "영희", "수잔", "제임스"]
let foreignFriends = ["제임스", "수잔"]
let koreanFriends = ["철수", "영희", "상철"]

let totalFriendsSet: Set<String> = Set(totalFriends)
let foreignFriendsSet: Set<String> = Set(foreignFriends)
let koreanFriendsSet: Set<String> = Set(koreanFriends)

// 내가 속해 있는지 체크
let isForeignFriendsIsInTotalFriends: Bool = foreignFriendsSet.isSubset(of: totalFriendsSet)
let isTotalFriendsHasForeignFriends: Bool = totalFriendsSet.isSuperset(of: foreignFriendsSet)
let isTotalFriendsHasKoreanFriends: Bool = totalFriendsSet.isSuperset(of: koreanFriendsSet)
let isKoreanFriendsIsInTotalFriends: Bool = koreanFriendsSet.isSubset(of: totalFriendsSet)


