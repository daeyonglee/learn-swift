import UIKit

class Sword {
    var durability = 100
    var itemInfo: String {
        get {
            switch durability {
            case 50...100:
                return "음~ 아주 명검이야"
            case 10...50:
                return "아직 쓸만하군"
            default:
                return "더이상 못써"
            }
        }
    }
    func attackedMonster() {
        self.durability = self.durability - 40
    }
}

let mySword = Sword()
mySword.attackedMonster()
print(mySword.itemInfo)
mySword.attackedMonster()
print(mySword.itemInfo)
mySword.attackedMonster()
print(mySword.itemInfo)
