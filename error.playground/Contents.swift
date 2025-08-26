import UIKit

// 자료형이 Error 인 enum
enum MismatchError: Error {
    case nameMismatch
}

// throw를 통해 에러를 밖으로 던진다.
// 에러를 밖으로 보낸다고 메소드 반환 부분에 throws
func guessMyName(name userInput: String) throws {
    if (userInput != "김") {
        throw MismatchError.nameMismatch
    }
}

do {
    try guessMyName(name: "박")
    print("OK")
} catch {
    print("에러: \(error)")
    print("No..")
}
