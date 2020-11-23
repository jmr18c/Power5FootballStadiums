import SwiftUI

struct FeatureCard: View {
    var stadium: Stadiums
    
    var body: some View {
        stadium.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay(TextOverlay(stadium: stadium))
    }
}

struct TextOverlay: View {
    var stadium: Stadiums
    
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
            VStack(alignment: .leading) {
                Text(stadium.stadium)
                    .font(.title)
                    .bold()
                Text(stadium.team)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(stadium: features[0])
    }
}
