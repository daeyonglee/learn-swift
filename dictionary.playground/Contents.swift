import UIKit

// 키 : 값

var myFriends = ["bestFriend": "베스트프랜드", "highSchoolFriend": "고등학교 친구"]





let myBestFriend = myFriends["bestFriend"]

let highSchoolFriend = myFriends["highSchoolFriend"]

let youtubeFriend = myFriends["youtube", default: "친구없음"]

myFriends["bestFriend"] = "최애친구"

let myBF = myFriends["bestFriend"]

myFriends["newFriend"] = "철수"

let newFriend = myFriends["newFriend"]!

myFriends.updateValue("수잔", forKey: "girlFriend")

let girlFriend = myFriends["girlFriend"]!

myFriends["bestFriend"] = "잭슨"

//let emptyDictionary : [String : Int] = [:]
let emptyDictionary = [String : Int]()

let myEmptyDictionary : [String : Int] = Dictionary<String, Int>()

myFriends.count

for item in myFriends {
    print("item: \(item)")
}
