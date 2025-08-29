import UIKit

let statusCode = 403

// 400 ~ 499 레인지에 status코드가 포함된다면
if (400..<500).contains(statusCode) {
    print("400~500")
}

// 좀 더 간결
if 400..<500 ~= statusCode {
    print("400~500")
}


// 오버로드
func ~= (pattern: String, value: Int) -> Bool {
    return pattern == "\(value)"
}


if "20" ~= 20 {
    print("일치")
} else {
    print("불일치")
}
