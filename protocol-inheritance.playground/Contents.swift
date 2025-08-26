import UIKit

protocol Naming {
    var name: String { get set }
    func getName() -> String
}

protocol AgeCountable {
    var age : Int { get set }
}

protocol Friendable : Naming, AgeCountable {
}

struct MyFriend : Friendable {
    var name: String
    var age: Int
    
    func getName() -> String {
        return self.name
    }
}


var myFriend = MyFriend(name: "김철수", age: 19)
myFriend.getName()
myFriend.age
