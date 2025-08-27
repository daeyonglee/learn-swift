import UIKit

struct Friend : Hashable {
    var name: String
    var age: Int
}


let myFriedns = [
    Friend(name: "철수", age:10),
    Friend(name: "영희", age:20),
    Friend(name: "찰리", age:20),
    Friend(name: "레이첼", age:30),
    Friend(name: "수진", age: 30)
]


let totalAge = myFriedns.reduce(0, { partialResult, aFriend in partialResult + aFriend.age})


let groupedFriends = myFriedns.reduce(into: [:], { partialResult, aFriend in
    partialResult[aFriend.age] = myFriedns.filter{$0.age == aFriend.age}
})


print(groupedFriends)
