//
//  DetailImage.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/12/20.
//


import SwiftUI

struct DetailImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(50)
            .frame(width: 250, height: 250)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailImage(image: Image("acu_bonus"))
    }
}
