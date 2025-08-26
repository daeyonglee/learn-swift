import UIKit

var friendsArray = ["철수", "영희", "수진"]

let myFriends = friendsArray.map{
    "내친구: + " + $0
}

print(myFriends)

let myPetDictionary = ["고양이": "야옹", "강아지": "멍멍", "돼지": "꿀꿀"]

let petResult = myPetDictionary.map{
    (kind, sound) in return ("우리집: \(kind)", "울음소리: \(sound)")
}

print(petResult)


let numbersSet: Set<Int> = [1,1,2,3,4,4,5]

let result = numbersSet.map({
    (number:Int) -> Int in return number * 10
})

print("mappedNumbersSet: \(result)")

let resultOne = numbersSet.map({(number:Int) -> Int in return number * 10})
let resultTwo = numbersSet.map({ (number: Int) in number * 10})
let resultThree = numbersSet.map{ $0 * 10 }
