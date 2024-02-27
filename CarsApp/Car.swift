//
//  Car.swift
//  CarsApp
//
//  Created by mohammed on 19/02/2024.
//

import SwiftUI

struct Car: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let models: [String]
}
