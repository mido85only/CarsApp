//
//  ContentView.swift
//  CarsApp
//
//  Created by mohammed on 18/02/2024.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(carsData) { item in
                CardView(car: item)
                    .clipShape(.rect(cornerRadius: 15))
                    .padding(.horizontal , 10)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding()
    }
}

#Preview {
    OnboardingView()
}
