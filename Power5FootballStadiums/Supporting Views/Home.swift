//
//  Home.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/12/20.
//

import SwiftUI

struct ConferenceHome: View {
    var conferences: [String: [Stadiums]] {
        Dictionary(
            grouping: stadiumData,
            by: { $0.conference.rawValue }
        )
    }
    
    
    var featured: [Stadiums] {
        stadiumData.filter { $0.featured }
    }
    
    @State var showingProfile = false
    @EnvironmentObject var userData: UserData
    
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                FeaturedStadiums(stadium: featured)
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(conferences.keys.sorted(), id: \.self) { key in
                ConferenceRow(conferenceName: key, items: self.conferences[key]!)
                }
                .listRowInsets(EdgeInsets())
                
                NavigationLink(destination: StadiumList()) {
                    Text("See All Stadiums")
                }
            }
            .navigationBarTitle(Text("Power 5 Stadiums"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(self.userData)
            }
        }
    }
}

struct FeaturedStadiums: View {
    var stadium: [Stadiums]
    var body: some View {
        PageView(features.map { FeatureCard(stadium: $0) })
        .aspectRatio(3/2, contentMode: .fit)
    }
}

struct ConferenceHome_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceHome()
    }
}
