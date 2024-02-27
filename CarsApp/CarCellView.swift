//
//  CarCellView.swift
//  CarsApp
//
//  Created by mohammed on 20/02/2024.
//

import SwiftUI

struct CarCellView: View {
    
    var car : Car
    var body: some View {
        HStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.3), radius: 2, x: 2, y: 2)
            
            VStack(alignment:.leading , spacing: 5){
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text(car.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
            }
            Spacer()
            
        }
    }
}

#Preview {
    CarCellView(car: carsData[0])
        .previewLayout(.sizeThatFits)
}
