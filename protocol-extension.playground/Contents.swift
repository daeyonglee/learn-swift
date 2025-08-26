import UIKit

protocol Naming {
    var lastname: String { get set }
    var firstname: String { get set }
    func getName() -> String
}

extension Naming {
    func getFullName() -> String {
        return self.lastname + ", " + self.firstname
    }
}


struct Friend: Naming {
    var lastname: String
    var firstname: String
    func getName() -> String {
        return self.firstname
    }
}

let myFriend = Friend(lastname: "Dupont", firstname: "Jean")

let name = myFriend.getName()

print("name: \(name)")

let fullname = myFriend.getFullName()

print("fullname: \(fullname)")
