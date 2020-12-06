import SwiftUI

struct FeatureCard: View {
    var stadium: Stadiums
    
    var body: some View {
        stadium.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .cornerRadius(50)
            .overlay(TextOverlay(stadium: stadium))
    }
}

struct TextOverlay: View {
    var stadium: Stadiums
    
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.black.opacity(0.01), Color.white.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle().fill(gradient)
            VStack(alignment: .center) {
                Text(stadium.stadium)
                    .font(Font.system(size:20, design: .default))
                    .bold()
                    .multilineTextAlignment(.center)
                Text(stadium.team)
            }
            .background(Color.white.opacity(0.5))
            .padding()
        }
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(stadium: features[0])
    }
}
