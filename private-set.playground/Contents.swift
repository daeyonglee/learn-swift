import UIKit

struct MyPet {
    var title : String = "타이트없음"
    private(set) var name : String = "이름없음"
    
    mutating func setName(to newName : String) {
        self.name = newName
    }
}


var myPet = MyPet()
myPet.title = "호롤로"
myPet.title

myPet.setName(to: "김철수")
myPet.name
//myPet.name = "박영희" // 불가능
