import UIKit

protocol Naming {
    var name: String { get set }
}

class Cat: Naming {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Friend: Naming {
    var name: String
    init(name: String) {
        self.name = name
    }
}

extension Naming where Self: Friend {
    func sayName() {
        print("난 \(self.name)이야")
    }
}

let myFriend: Friend = Friend(name: "김나영")
myFriend.sayName()

extension Naming where Self: Cat {
    func sayName() {
        print("\(self.name): 야옹")
    }
}

let myCat = Cat(name: "고양이")
myCat.sayName()
