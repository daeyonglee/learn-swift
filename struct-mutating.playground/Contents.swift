import UIKit


// struct 는 class와 다르기때문에 멤버변수 값을 변경하려면 mutating 키워드 필요
struct Friend {
    var name: String
    
    mutating func changeName() {
        self.name = "hello! " + self.name
    }
}


var myFriend = Friend(name: "swift")

print(myFriend.name)
myFriend.name = "swift2"

print(myFriend.name)
