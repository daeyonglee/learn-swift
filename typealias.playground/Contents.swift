import UIKit

protocol Naming {
    func getName() -> String
}
protocol Aging {
    func getAge() -> Int
}

typealias Friendable = Naming & Aging
struct Friend : Friendable {
    var name: String
    var age: Int
    func getName() -> String {
        return self.name
    }
    func getAge() -> Int {
        return self.age
    }
}

typealias FriendName = String

var friendName : FriendName = "John"

typealias Friends = [Friend]

var myFriendsArray = Friends()

typealias StringBlock = (String) -> Void

func sayHi(completion: StringBlock) {
    print("안녕하세요.")
    completion("Hi")
}

sayHi(completion: {
    result in print("여기서 발음 : \(result)")
})
