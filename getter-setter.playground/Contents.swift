import UIKit

class Friend {
    var name : String = ""
    
    var nickname : String {
        get {
            return "내 친구: " + name
        }
        set {
            name = newValue + " (내가 지어준 별명)"
        }
    }
}


let myFriend = Friend()
myFriend.name = "김철수"
print(myFriend.nickname)

myFriend.nickname = "빡빡이"
print(myFriend.nickname)
