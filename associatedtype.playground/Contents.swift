import UIKit

protocol PetHaving {
    // associatedtype을 통해 제네릭으로 어떤 자료형을 받을 수 있음.
    associatedtype T
    var pets: [T] { get set }
    mutating func gotNewPet(newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(newPet: T) {
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}

struct Friend: PetHaving {
    var pets = [Animal]()
}

struct Familly: PetHaving {
    var pets: [String] = []
}


var myFriend = Friend()
myFriend.gotNewPet(newPet: Animal.cat)
print(myFriend.pets)

var myFamilly = Familly()
myFamilly.gotNewPet(newPet: "고양이")
print(myFamilly.pets)
