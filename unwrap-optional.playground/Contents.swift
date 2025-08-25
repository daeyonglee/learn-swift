import UIKit

var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

if let otherVariable = someVariable {
    print("언래핑 되었다. 즉 값이 있다. otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}

var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)

// someVariable 이 비어있으면 즉 값이 없으면 기본값으로 요놈을 넣겠다.
let myValue = someVariable ?? 10
print("myValue: \(myValue)")
 

func unwrap(_ parameter: Int?) {
    print("unwrap called")
    // guard 문은 조건이 충족되지 않을 때 코드의 실행을 중단하고 특정 블록을 종료하는 데 사용
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}
