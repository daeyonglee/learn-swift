import UIKit

var myArray = [1,4,3,2,5,9,7,6,8,10]

var sortedArray = myArray.sorted()

print("myArray: ", myArray)
print("sortedArray: ", sortedArray)


var desendingArray = myArray.sorted(by: {
    (someValue:Int, otherValue:Int) -> Bool in
    return someValue > otherValue
})


print("desendingArray: \(desendingArray)")

var myDesendingArray = myArray.sorted(by: {
    return $0 > $1
})

print("myDesendingArray: \(myDesendingArray)")


var shortenDesendingArray = myArray.sorted(by: >)
print("shortenDesendingArray: \(shortenDesendingArray)")


myArray.sort()
myArray.sort(by: >)
myArray.sort(by: { $0 > $1 } )
myArray.sorted(by: { (someValue, otherValue) -> Bool in
    return someValue > otherValue
})
