//
//  StadiumRow.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/17/20.
//

import SwiftUI

struct StadiumRow: View {
    var stadium: Stadiums
    
    var body: some View {
        HStack {
            stadium.imageName
                .resizable()
                .frame(width: 50, height: 50)
            Text(stadium.stadium)
            Spacer()
            
            if stadium.favorite {
                Image(systemName: "star.fill")
                    .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct StadiumRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StadiumRow(stadium: stadiumData[0])
            StadiumRow(stadium: stadiumData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
