import UIKit

class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}


class Cat: Pet {
    var hair: String
    init(name: String, _ hair: String) {
        self.hair = hair
        super.init(name: name)
    }
}

class Dog: Pet {
    var kind : String
    init(name: String, _ kind: String) {
        self.kind = kind
        super.init(name: name)
    }
}


let myDog = Dog(name: "똘똘이", "치와와")
let myCat = Cat(name: "개냥이", "짧은 털")
let myPets: [Pet] = [myDog, myCat]

myPets.forEach {
    if $0 is Dog {
        print("강아지 \($0.name)")
    } else if $0 is Cat {
        print("고양이 \($0.name)")
    }
}
