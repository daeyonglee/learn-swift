import UIKit

enum FriendType {
    case normal, best
}

struct Friend {
    var name: String
    var type: FriendType
}

let friends = [
    Friend(name: "철수", type: .normal),
    Friend(name: "영희", type: .best),
    Friend(name: "짱구", type: .best),
    Friend(name: "수진", type: .normal)
]

print(friends)

let groupedLst = Dictionary(grouping: friends, by: {
    (friend: Friend) -> FriendType in
    return friend.type
})

print(groupedLst)
