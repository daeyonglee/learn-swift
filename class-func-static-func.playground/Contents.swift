import UIKit

// static func는 final class func과 같다.
// final class는 상속이 불가능하다.

class Friend {
    func sayHi() {
        print("안녕?")
    }
    
    class func sayBye() {
        print("바이")
    }
    
    static func sayhoho() {
        print("호호")
    }
}

class BestFriend : Friend {
    class override func sayBye() {
        super.sayBye()
        print("베프: sayBye()")
    }
    
//    불가능
//    override func sayhoho() {
//        print("덮어씀")
//    }
}


let myFriend = BestFriend()
myFriend.sayHi()

BestFriend.sayBye()

Friend.sayhoho()

