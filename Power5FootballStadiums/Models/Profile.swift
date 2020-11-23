import Foundation

struct Profile {
    var username: String
    var sportPhoto: Sport
    
    static let `default` = Self(username: "jraitz00", sportPhoto: .football)
    
    init(username: String, sportPhoto: Sport = .football) {
        self.username = username
        self.sportPhoto = sportPhoto
    }
    
    enum Sport: String, CaseIterable {
        case football = "🏈"
        case basketball = "🏀"
        case baseball = "⚾️"
        case soccer = "⚽️"
    }
}
