//
//  HeaderView.swift
//  CarsApp
//
//  Created by mohammed on 24/02/2024.
//

import SwiftUI

struct HeaderView: View {
    //Properties
    
    var car : Car
    @State var isAnimating = false
    
    var body: some View {
        ZStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.6)
                .animation(.linear(duration: 0.4), value: isAnimating)
        }// zstack
//        .frame(height: 440 , alignment: .center)
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 440, idealHeight: 440, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear(perform: {
            isAnimating = true
        })
    }
}


#Preview {
    HeaderView(car: carsData[0])
}
