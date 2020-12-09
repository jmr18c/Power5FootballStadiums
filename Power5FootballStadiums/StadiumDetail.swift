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
        ScrollView{
            VStack {
                MapView(coordinate: stadium.locationCoordinate)
                    .frame(height: 300)
                    .edgesIgnoringSafeArea(.top)
                
                DetailImage(image: stadium.imageName)
                    .offset(y: -85)
                    .padding(.bottom, -105)
                
                VStack(alignment: .center) {
                    HStack {
                        Text(stadium.stadium)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                    }
                    
                    HStack {
                        Button(action: {
                            self.userData.stadiums[self.stadiumIndex].favorite.toggle()
                                            }) {
                            if self.userData.stadiums[self.stadiumIndex].favorite {
                                Image(systemName: "star.fill")
                                    .imageScale(.large)
                                    .foregroundColor(Color.yellow)
                            } else {
                                Image(systemName: "star")
                                    .imageScale(.large)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        Button(action: {
                            self.userData.stadiums[self.stadiumIndex].visited.toggle()
                            }) {
                            if self.userData.stadiums[self.stadiumIndex].visited {
                                Image(systemName: "circle.fill")
                                    .imageScale(.large)
                                    .foregroundColor(Color.green)
                            } else {
                                Image(systemName: "circle")
                                    .imageScale(.large)
                                    .foregroundColor(Color.gray)
                            }
                        }
                    }
                    .padding(.bottom)
                    Text(stadium.team)
                        .font(.title)
                    Text("\(stadium.city), \(stadium.state)")
                        .font(.title)
                    Text("Opened: \(stadium.year)")
                        .font(.title)
                    Text("Capacity: \(stadium.capacity)")
                        .font(.title)
                }
                .padding()
                
                Spacer()
            }
        }
        .navigationBarTitle(Text(stadium.stadium), displayMode: .inline)
    }
}
