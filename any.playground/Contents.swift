import UIKit

var things = [Any]()

struct Pet {
    var name : String
    var kind : String
}

things.append(0)
things.append(0.0)
things.append("hello")
things.append(Pet(name: "Fluffykins", kind: "cat"))

print(things)
