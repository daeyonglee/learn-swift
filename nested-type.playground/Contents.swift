import UIKit

struct MyPet {
    enum Kind {
        case cat
        case dog
        var value: String {
            switch self {
                case .cat:
                    return "고양이"
                case .dog:
                    return "강아지"
            }
        }
        var name: String {
            switch self {
                case .cat:
                    return "야옹"
                case .dog:
                    return "멍멍"
            }
        }
    }
    let kind: Kind
    var description: String {
        return "우리집 \(kind.value) \(kind.name)에요"
    }
}

let myCat = MyPet(kind: .cat)
print(myCat.description)

let myDog = MyPet(kind: .dog)
print(myDog.description)
