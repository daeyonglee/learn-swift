import UIKit

class Friend {
    var name: String
    var age: Int
    init(name: String) {
        self.name = name
        self.age = 10
    }
    
    // 생성자 오버로딩 같은 느낌?
    convenience init(name: String, age: Int) {
        self.init(name: name)
        self.age = age
    }
}


let myFriend = Friend(name: "John", age: 20)
myFriend.age
