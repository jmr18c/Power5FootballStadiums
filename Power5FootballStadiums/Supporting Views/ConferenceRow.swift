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
                .font(.headline)
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
            .frame(height: 185)
        }
    }
}

struct ConferenceItem: View {
    var stadium: Stadiums
    var body: some View {
        VStack(alignment: .leading) {
            stadium.imageName
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(stadium.stadium)
                .foregroundColor(.primary)
                .font(.caption)
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
