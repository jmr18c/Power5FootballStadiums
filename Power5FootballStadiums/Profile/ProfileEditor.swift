//
//  ProfileEditor.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/12/20.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username:")
                    .bold()
                Divider()
                TextField("Enter Username", text: $profile.username)
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Favorite Conference:")
                    .bold()
                
                Picker("Favorite Conference", selection: $profile.favConference) {
                    ForEach(Profile.Conference.allCases, id: \.self) { conference in
                        Text(conference.rawValue).tag(conference)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .padding(.top)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Out of the 66 stadiums in the app, how many have you visited?")
                    .bold()
                
                HStack {
                    Text("Enter the number you have visited:")
                        .bold()
                    Divider()
                    TextField("Stadiums Visited", text: $profile.visitedCount)
                }
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
