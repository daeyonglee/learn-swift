import UIKit



enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high
}

let yourSchool : School = .high
print("your school : \(yourSchool)")


enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade : Grade = .second
print("your grade : \(yourGrade)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
            case .elementary(let name):
                return name
            case .middle(let name):
                return name
            case .high(let name):
                return name
        }
    }
}

let schoolDetail : SchoolDetail = .high(name: "서울고등학교")
print("school detail : \(schoolDetail)")


let schoolName : String = schoolDetail.getName()
print("school name : \(schoolName)")
