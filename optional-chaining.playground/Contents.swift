import UIKit

struct Friend {
    let nickname: String
    let person: Person?
}

struct Person {
    let name: String
    let pet: Pet?
}
struct Pet {
    let name: String?
    let kind: String
}

let pet = Pet(name: "개냥이", kind: "고양이")
let person = Person(name: "김철수", pet: pet)
let friend = Friend(nickname: "철수", person: person)

print(friend.nickname)
print(friend.person?.name ?? "없음")
print(friend.person?.pet?.name ?? "없음")
print(friend.person?.pet?.kind ?? "없음")


if let person: Person = friend.person {
    if let pet = person.pet {
        if let petName = pet.name {
            print("petName: \(petName)")
        } else {
            print("petName: 없음")
        }
    }
}

if let petName = friend.person?.pet?.name {
    print("petName: \(petName)")
} else {
    print("petName: 없음")
}

