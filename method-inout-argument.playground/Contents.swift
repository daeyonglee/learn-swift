import UIKit

// _를 사용하면 메소드 호출시 매개변수 이름을 입력하지 않아도 된다.
func sayName(_ name: String) {
    print("안녕? 난 \(name) 라고 해")
}

sayName("김철수")

// 보통 매개변수 값은 변경 불가능하나 inout 키워드를 사용하면 변경 가능
func sayYourName(_ name: inout String) {
    name = "내이름은 \(name)"
    print("안녕? 난 \(name) 라고 해")
}

// inout 메소드에 들어가는 값은
// 변수 할당 후 사용

var name = "김철수"

sayYourName(&name)




