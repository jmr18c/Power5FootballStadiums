//
//  CircleImage.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/12/20.
//


import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250)
            .clipped()
            .border(Color.black, width: 10)
            .shadow(radius: 20)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("acu_bonus"))
    }
}
