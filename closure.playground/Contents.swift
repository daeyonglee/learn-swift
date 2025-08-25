import UIKit

// String을 반환하는 클로저

let myName: String = {
    return "김철수"
}()


print(myName)


// 클로저 정의
let myRealName: (String) -> String = {
    (name: String) -> String in
    return "\(name)님, 안녕하세요."
}

myRealName("박철민")

let myRealNameLogic : (String) -> Void = {
    (name: String) in print("헬로우 \(name)")
}


myRealNameLogic("공룡")


func sayHi( completion: () -> Void ) {
    print("sayHi() called")
    sleep(2)
    
    completion()
}

sayHi(completion: {
    print("2초가 지났다. 1")
})

sayHi() {
    print("2초가 지났다. 2")
}

sayHi {
    print("2초가 지났다. 3")
}


func sayHiWithName(completion: (String) -> Void) {
    print("sayHiWithName() called")
    sleep(2)
    
    completion("오늘도 ~")
}

sayHiWithName(completion: { (comment: String) in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})

sayHiWithName(completion: { comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})

sayHiWithName{ comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
}

sayHiWithName{
    print("2초 뒤에 그가 말했다! comment: ", $0)
}

func sayHiWithFullName(completion: (String, String) -> Void) {
    print("sayHiWithFullName() called")
    sleep(2)
    completion("코딩", "호롤로")
}

sayHiWithFullName { first, second in
    print("첫번째: \(first), 두번째: \(second)")
}

sayHiWithFullName { _, second in
    print("두번째: \(second)")
}

sayHiWithFullName{
    print("첫번째: \($0), 두번째: \($1)")
}


func sayHiOptional(completion: (() -> Void)? = nil) {
    print("sayHiOptional() called")
    sleep(2)
    
    completion?()
}

sayHiOptional{
    
}

sayHiOptional()

sayHiOptional(completion: {
    print("2초가 지났다!!")
})

var myNumbers: [Int] = [0, 1, 2, 3, 4, 5]

var transformedNumbers = myNumbers.map {
    return "숫자: \($0)"
}
