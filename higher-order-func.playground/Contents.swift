import UIKit

func getMyWords(_ firstWord: String, _ lastWord: String) -> String {
    return firstWord + " " + lastWord
}

func getMyWordsTwice(_ firstWord: String, _ lastWord: String) -> String {
    return firstWord + " " + lastWord + " / 한번 더 말할게요 / " + firstWord + " " + lastWord
}


func saySomething(getWords: (_ first: String, _ last: String) -> String, firstInput: String, lastInput: String) -> String {
    return getWords(firstInput, lastInput)
}

let resultOne = saySomething(getWords: getMyWords(_:_:), firstInput: "안녕하세요!", lastInput: "김철수 입니다.")

print("resultOne: \(resultOne)")


let resultTwo = saySomething(getWords: getMyWordsTwice(_:_:), firstInput: "안녕하세요", lastInput: "김철수 입니다.")

print("resultTwo: \(resultTwo)")
