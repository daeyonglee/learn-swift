import UIKit

// final class는 상속불가
final class Friend {
    var name : String
    
    init(name: String) {
        self.name = name
    }
}

class BestFriend : Friend {
    override init(name: String) {
        super.init(name: "베프 " + name)
    }
}


let myFriend = Friend(name: "김")
let bestFriend = BestFriend(name: "김")

print(myFriend.name)
print(bestFriend.name)

