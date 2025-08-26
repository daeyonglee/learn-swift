import UIKit

struct Friend {
    var lastname: String
    var firstname: String
    
    func fullname() -> String {
        return "\(lastname), \(firstname)"
    }
}

var myFriend = Friend(lastname: "Dupont", firstname: "Jean")

print(myFriend.fullname())
