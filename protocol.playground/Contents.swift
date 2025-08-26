import UIKit

// 보통 delegate 패턴의 경우에는 OOdelegate
// 스위프트 언어자체에서는 OOing, OOable
// 등으로 프로토콜의 이름을 정함

// 프로토콜을 통해
// 멤버변수, 메소드 등을 꼭 구현하도록 강제
protocol Naming {
    var name : String { get }
    func getName() -> String
}

struct Friend: Naming {
    var name: String
    
    func getName() -> String {
        return "내 친구: " + name
    }
}


let myFriend = Friend(name: "철수")
let name = myFriend.getName()

print(name)
