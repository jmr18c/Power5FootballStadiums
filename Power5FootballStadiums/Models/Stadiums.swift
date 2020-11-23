import SwiftUI
import CoreLocation

struct Stadiums: Hashable, Codable, Identifiable {
    var id: Int
    var stadium: String
    fileprivate var image: String
    fileprivate var coordinates: Coordinates
    var city: String
    var state: String
    var team: String
    var conference: Conference
    var favorite: Bool
    var featured: Bool

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    var featureImage: Image? {
        guard featured else { return nil }
        
        return Image(
            ImageStore.loadImage(name: "\(image)_feature"),
            scale: 2,
            label: Text(stadium))
    }

    enum Conference: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case acc = "ACC"
        case big10 = "Big Ten"
        case big12 = "Big 12"
        case pac12 = "Pac-12"
        case sec = "SEC"
        case bonus = "Special Bonus"
    }
}

extension Stadiums {
    var imageName: Image {
        ImageStore.shared.image(name: image)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
