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
                    Text("Favorites only")
                }
                ForEach(userData.stadiums) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.favorite {
                        NavigationLink(destination: StadiumDetail(stadium: landmark)) {
                            StadiumRow(stadium: landmark)
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
