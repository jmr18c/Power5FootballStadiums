//
//  ConferenceRow.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/12/20.
//

import SwiftUI

struct ConferenceRow: View {
    var conferenceName: String
    var items: [Stadiums]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.conferenceName)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { stadium in
                        NavigationLink(
                            destination: StadiumDetail(
                                stadium: stadium
                            )
                        ) {
                            ConferenceItem(stadium: stadium)
                        }
                    }
                }
            }
            .frame(height: 250)
        }
    }
}

struct ConferenceItem: View {
    var stadium: Stadiums
    var body: some View {
        VStack(alignment: .center) {
            stadium.imageName
                .renderingMode(.original)
                .resizable()
                .cornerRadius(50)
                .frame(width: 200, height: 200)
            Text(stadium.stadium)
                .foregroundColor(.primary)
                .font(.system(size: 20, weight: .bold))
        }
        .padding(.leading, 15)
    }
}

struct ConferenceRow_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceRow(
            conferenceName: stadiumData[0].conference.rawValue,
            items: Array(stadiumData.prefix(4))
        )
    }
}
