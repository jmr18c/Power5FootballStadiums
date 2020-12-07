import Foundation

struct Profile {
    var username: String
    var favConference: Conference
    var visitedCount: Int
    
    static let `default` = Self(username: "jraitz00", favConference: .big10, visitedCount: 0)
    
    init(username: String, favConference: Conference = .big10, visitedCount: Int) {
        self.username = username
        self.favConference = favConference
        
        
        
        self.visitedCount = visitedCount
    }
    
    
    
    enum Conference: String, CaseIterable {
        case acc = "ACC"
        case big10 = "Big10"
        case big12 = "Big12"
        case pac12 = "Pac-12"
        case sec = "SEC"
    }
}
