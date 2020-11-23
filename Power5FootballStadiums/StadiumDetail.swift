//
//  StadiumDetail.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/12/20.
//

import SwiftUI

struct StadiumDetail: View {
    @EnvironmentObject var userData: UserData
    var stadium: Stadiums
    
    var stadiumIndex: Int {
        userData.stadiums.firstIndex(where: { $0.id == stadium.id })!
    }

    var body: some View {
        VStack {
            MapView(coordinate: stadium.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: stadium.imageName)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(stadium.stadium)
                        .font(.title)
                    
                    Button(action: {
                        self.userData.stadiums[self.stadiumIndex].favorite.toggle()
                                        }) {
                        if self.userData.stadiums[self.stadiumIndex].favorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                
                HStack(alignment: .top) {
                    Text(stadium.team)
                        .font(.subheadline)
                    Spacer()
                    Text("\(stadium.city), \(stadium.state)")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(stadium.stadium), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StadiumDetail(stadium: stadiumData[0])
            .environmentObject(UserData())
    }
}
