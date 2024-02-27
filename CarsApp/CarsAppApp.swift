//
//  CarsAppApp.swift
//  CarsApp
//
//  Created by mohammed on 18/02/2024.
//

import SwiftUI

@main
struct CarsAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else{
                CarsListView()
            }
        }
    }
}
