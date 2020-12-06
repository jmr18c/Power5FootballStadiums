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
                Text("Username")
                    .bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Favorite Sport")
                    .bold()
                
                Picker("Favoite Sport", selection: $profile.favConference) {
                    ForEach(Profile.Conference.allCases, id: \.self) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .padding(.top)
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
