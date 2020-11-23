//
//  UserData.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/17/20.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var stadiums = stadiumData
    @Published var profile = Profile.default
}
