import UIKit

var count = 0
let max = 5

while count < max {
    count = count + 1
    print("count: ", count)
}

print("Done!")



// 일단 한번 실행하고 조건 체크
// 일반 while은 조건부터 보고 실행
repeat {
    count = count + 1
    print("count: ", count)
} while count < max
