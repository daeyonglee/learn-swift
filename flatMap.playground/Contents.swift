import UIKit

let myFriends = [["1-1"], ["2-1"], ["3-1", "3-2"], ["4-1", "4-2"]]


// flatMap은 1차원으로 만들어줌
let flatMapped = myFriends.flatMap{
    (item: [String]) in return item
}

print(flatMapped)
