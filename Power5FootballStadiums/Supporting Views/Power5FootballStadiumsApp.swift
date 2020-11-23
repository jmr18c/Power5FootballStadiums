//
//  Power5FootballStadiumsApp.swift
//  Power5FootballStadiums
//
//  Created by Justin Raitz on 11/12/20.
//

import SwiftUI

@main
struct Power5FootballStadiumsApp: App {
    var body: some Scene {
        WindowGroup {
            ConferenceHome() .environmentObject(UserData())
        }
    }
}
