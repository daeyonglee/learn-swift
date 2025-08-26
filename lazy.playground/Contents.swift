import UIKit

struct Pet {
    init() {
        print("Pet 이 생성 되었다.")
    }
}


struct Friend {
    var name : String
    // 사용할 때 메모리에 할당됨
    lazy var pet = Pet()
    init(_ name: String) {
        self.name = name
        print("Friend가 생성됨")
    }
}


var myFriend = Friend("용")

// pet이 메모리 할당 되는 시점
myFriend.pet = Pet()
