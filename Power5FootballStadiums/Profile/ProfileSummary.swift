//
//  ProfileSummary.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/12/20.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Favorite Conference: \(self.profile.favConference.rawValue)")
            
            Text("Stadiums Visited: \(self.profile.visitedCount)/66")
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
