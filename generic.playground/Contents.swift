import UIKit


struct MyArray<T> {
    
    var elements : [T] = [T]()
    
    init (_ elements: [T]) {
        self.elements = elements
    }
}


struct Friend {
    var name: String
}

struct PpakCoder {
    var name: String
}

var mySomeArray = MyArray([1,2,3])
print("mySomeArray: \(mySomeArray)")

var myStringArray = MyArray(["a","b","c"])
print("myStringArray: \(myStringArray)")

let friend_01 = Friend(name: "철수")
let friend_02 = Friend(name: "영희")
let friend_03 = Friend(name: "미애")

var myFriendArray = MyArray([friend_01, friend_02, friend_03])
print("myFriendArray: \(myFriendArray)")

