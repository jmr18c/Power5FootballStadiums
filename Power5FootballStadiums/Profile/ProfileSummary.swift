//
//  ProfileSummary.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/12/20.
//

import SwiftUI


    

struct ProfileSummary: View {
    var profile: Profile
    @EnvironmentObject var userData: UserData

    /*func visitedUpdateCount() -> Int{
        var visitedCount = 0
        
        ForEach(userData.stadiums) { stadium in
            if stadium.visited {
                visitedCount += 1
            }
        }
        
        return visitedCount
    }*/
    
    
    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Favorite Conference: \(self.profile.favConference.rawValue)")
            
            Text("Stadiums Visited: \(self.profile.visitedCount) / 66 Total Stadiums")
        }
    }
}
