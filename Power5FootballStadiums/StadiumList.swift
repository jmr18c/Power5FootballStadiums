//
//  StadiumList.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/17/20.
//

import SwiftUI

struct StadiumList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {

            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(userData.stadiums) { stadium in
                    if !self.userData.showFavoritesOnly || stadium.favorite {
                        NavigationLink(destination: StadiumDetail(stadium: stadium)) {
                            StadiumRow(stadium: stadium)
                        }
                    }
                }
                Toggle(isOn: $userData.showVisitedOnly) {
                    Text("Visited only")
                }
                ForEach(userData.stadiums) { stadium in
                    if !self.userData.showVisitedOnly || stadium.visited {
                        NavigationLink(destination: StadiumDetail(stadium: stadium)) {
                            StadiumRow(stadium: stadium)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Stadiums"))

    }
}

struct StadiumList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StadiumList()
                .environmentObject(UserData())
        }
    }
}
