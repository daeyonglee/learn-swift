import UIKit

let jsonFromServer = """
{
    "nick_name": "용칠이",
    "job": "프로그래머",
    "user_name": "jason",
    
}
"""

// decode = json -> struct or class 로 변환
// encode = 반대

// Codable = Decodable & Encodable

struct User: Decodable {
    var nickname: String?
    var job: String
    var myUserName: String
    var age: Int?
    
    enum CodingKeys: String, CodingKey {
        case nickname = "nick_name"
        case job
        case myUserName = "user_name"
        case age
    }
    
    static func getUserFromJson(_ jsonString: String) -> Self? {
        guard let jsonData: Data = jsonFromServer.data(using: .utf8) else {
            return nil
        }
        
        do {
            let user = try JSONDecoder().decode(User.self, from: jsonData)
            return user
        } catch {
            print("에러발생: \(error)")
            return nil
        }
    }
}


let user = User.getUserFromJson(jsonFromServer)!
