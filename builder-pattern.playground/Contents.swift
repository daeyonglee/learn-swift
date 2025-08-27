import UIKit

struct Pet {
    var name: String? = nil
    var age: Int? = nil
}

class PetBuilder {
    private var pet : Pet = Pet()
    func withName(_ name: String) -> Self {
        pet.name = name
        return self
    }
    func withAge(_ age: Int) -> Self {
        pet.age = age
        return self
    }
    func build() -> Pet {
        return self.pet
    }
}

let myPet = PetBuilder()
    .withName("Daisy")
    .withAge(2)
    .build()
