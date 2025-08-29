import UIKit

var myPet : (name: String, kind: String, age: Int) = (name: "댕댕이", kind: "강아지", age: 1)


print(myPet.name)
print(myPet.kind)
print(myPet.age)

print(myPet.0)
print(myPet.1)
print(myPet.2)


// error
//myPet.name = 3


func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let myNumbers = [1, 5, 10, 8]

let result = minMax(array: myNumbers)


print(result.min)
print(result.max)
print(result.0)
print(result.1)
