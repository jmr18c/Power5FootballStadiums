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
            
            Text("Stadiums Visited: \(visits.count) / 66 Total Stadiums")
        }
    }
}
