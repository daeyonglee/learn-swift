import UIKit

class Pet {
    var name: String
    init (name: String) {
        self.name = name
    }
}

struct Pet2 {
    var name: String
    // 기본 생성자 자동 생성됨
    // 직접 구현하려면 init() 사용
//    init(name: String) {
//        self.name = name
//        print("호호")
//    }
}

// extension을 통해 init()을 설정할 수 있음.
extension Pet2 {
    init() {
        name = "하하하"
        print("호호2")
    }
}

let myCat = Pet(name: "고양이")
let myDog = Pet2(name: "강아지")
