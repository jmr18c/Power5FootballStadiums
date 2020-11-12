//
//  UserData.swift
//  Landmarks_JMR
//
//  Created by Justin Raitz on 11/9/20.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
