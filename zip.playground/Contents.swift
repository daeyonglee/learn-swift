import UIKit

let friends = ["영희", "철수", "존슨"]
let pets = ["야옹이", "댕댕이", "찍찍이"]

let friendAndPetPairs = zip(friends, pets)

for aPair in friendAndPetPairs {
    print(aPair.0, aPair.1)
}

let array = Array(friendAndPetPairs)
