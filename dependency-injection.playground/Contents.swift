import UIKit

protocol Talk {
    func sayHi()
}

class BestFriendTalk: Talk {
    func sayHi() {
        print("오호 오늘도 잘 지냈어?")
    }
}

class OldFriendTalk: Talk {
    func sayHi() {
        print("old friend sayHi..")
    }
}

class Friend {
    var talk: Talk?
    
    init() {}
    init(talk: Talk) {
        self.talk = talk
    }
    
    func sayHello() {
        talk?.sayHi()
    }
    
    func setTalk(talk: Talk) {
        self.talk = talk
    }
}

let bfTalk = BestFriendTalk()
let myBestFriend = Friend(talk: bfTalk)
myBestFriend.sayHello()

let oldFriendTalk = OldFriendTalk()
let myOldFriend = Friend()
myOldFriend.setTalk(talk: oldFriendTalk)
myOldFriend.sayHello()
