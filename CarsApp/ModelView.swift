//
//  ModelView.swift
//  CarsApp
//
//  Created by mohammed on 24/02/2024.
//

import SwiftUI

struct ModelView: View {
    //Properties
    var car : Car
    var body: some View {
        GroupBox(){
            DisclosureGroup("Car Models") {
                ForEach(0 ..< car.models.count , id: \.self) { item in
                    Divider()
                    HStack{
                        Image(systemName: "car")
                        Text("Model \(item + 1) :")
                        Spacer()
                        Text(car.models[item])
                            .foregroundStyle(car.gradientColors[0])
                            .fontWeight(.bold)
                        
                    }
                    .padding(.vertical , 3)
                }
            }// DisclosureGroup
            .foregroundStyle(car.gradientColors[0])
        }// GroupBox
    }
}

#Preview {
    ModelView(car: carsData[0])
}
