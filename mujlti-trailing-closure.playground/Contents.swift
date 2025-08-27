import UIKit

func someFunctionWithClosure(completion: () -> Void, secondCompletion: (String) -> Void, thirdCompletion: (Int) -> Void) {
    
    
    print("someFunctionWIthClosure() called")
    
    completion()
    secondCompletion("두번째 클로저")
    thirdCompletion(3)
}

someFunctionWithClosure {

} secondCompletion: {
    print("\($0)")
} thirdCompletion: {
    print("\($0)")
}
