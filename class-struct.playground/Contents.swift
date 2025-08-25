import UIKit



struct YoutuberStruct {
    var name: String
    var subscribercount: Int
}

var youtuber = YoutuberStruct(name: "Krunoslav Zaher", subscribercount: 1234567)

var youtuberClone = youtuber

print("youtuber.name: \(youtuber.name)")

// struct는 값복사를 하기때문에 youtuber의 name은 변경되지 않음
youtuberClone.name = "홀"

print("youtuber.name: \(youtuber.name)")
print("youtuberClone.name: \(youtuberClone.name)")


class YoutuberClass {
    var name: String
    var subscribercount: Int
    
    init(name: String, subscribercount: Int) {
        self.name = name
        self.subscribercount = subscribercount
    }
}


var youtuberClass = YoutuberClass(name: "Krunoslav Zaher", subscribercount: 1234567)

var youtuberClassClone = youtuberClass

print("youtuberClass.name: \(youtuberClass.name)")

// class는 참조하고 있는 값을 변경하기때문에 youtuberClass도 같이 바뀜
youtuberClassClone.name = "홀"

print("youtuberClass.name: \(youtuberClass.name)")
print("youtuberClassClone.name: \(youtuberClassClone.name)")
