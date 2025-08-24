import UIKit


var isDarkMode : Bool = true

if (isDarkMode == true) {
    print("다크모드 입니다.")
}

if (!isDarkMode) {
    print("다크모드 입니다.")
}

if (!isDarkMode == false) {
    print("다크모드 입니다.")
}

var str : String = isDarkMode == true ? "다크모드 입니다." : "라이트모드 입니다."
print(str)

