import UIKit

class MyFriend {
    var name : String
    
    init(_ name: String = "이름없음") {
        self.name = name
        print("MyFriend가 메모리에 할당됨.")
    }
    
    deinit {
        print("메모리에서 사라짐")
    }
    
    // deinit 검증을 위해 작성
    var calledTimes = 0
    var MAX_TIMES = 5
    
    static var instanceOfSelf = [MyFriend]()
    class func destroySelf(object: MyFriend) {
        instanceOfSelf = instanceOfSelf.filter { (aFriend : MyFriend) in aFriend !== object }
    }
    
    func call() {
        calledTimes = 1
        print("called times : \(calledTimes)")
        if (calledTimes > MAX_TIMES) {
            MyFriend.destroySelf(object: self)
        }
    }
}

let myFriend = MyFriend("이대리")
let aFriend = MyFriend()

// Unmanaged.passUnretained(객체).toOpaque()
// 로 해당 객체의 메모리 주소를 볼 수 있음.

let anObjectMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()
let secondobjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()

print(anObjectMemoryAddress)

print(secondobjectMemoryAddress)

weak var aFriendToBeDestoried = MyFriend("정약용")

if aFriendToBeDestoried != nil {
    aFriendToBeDestoried?.call()
} else {
    print("객체가 더 이상 메모리에 존재하지 않습니다.")
}
