import UIKit

var myArray = ["one", "2", "three", "4"]

let initArray = myArray.map({
    (item: String) in return Int(item)
})

print(initArray)

// compactMap은 변형시키는 값이 nill이면 배열에서 제외시킴
let onlyIntArray = myArray.compactMap({
    (item: String) in return Int(item)
})

print(onlyIntArray)
