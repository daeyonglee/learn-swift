import UIKit

struct PetKind {
    let name: String
}
struct Pet {
    let id: String
    let name: String
    let kind: PetKind
}
// Equatable protocol을 통해 커스텀 비교 연산자를 만들 수 있음
extension Pet: Equatable {
    public static func == (lhs: Pet, rhs: Pet) -> Bool {
        return lhs.id == rhs.id && lhs.kind.name == rhs.kind.name
    }
}

let catKind = PetKind(name: "고양이")
let dogKind = PetKind(name: "강아지")
let myPet1 = Pet(id: "123", name: "야옹이", kind: catKind)
let myPet2 = Pet(id: "123", name: "멍멍이", kind: dogKind)

print(myPet1 == myPet2)

if myPet1.id == myPet2.id
    && myPet1.kind.name == myPet2.kind.name {
    print("동일한Pet")
} else {
    print("다른Pet")
}
