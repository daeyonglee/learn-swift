import UIKit

// CaseIterable을 통해 enum도 콜렉션처럼 사용가능
enum Pet: String, CaseIterable {
    case cat = "고양이"
    case dog = "강아지"
    case trueBird = "참새"
}

let petKindsCount = Pet.allCases.count
print("애완동물 수: ", petKindsCount)


for petTypeItem in Pet.allCases {
    print(petTypeItem.rawValue)
}
