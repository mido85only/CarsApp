//
//  CardView.swift
//  CarsApp
//
//  Created by mohammed on 20/02/2024.
//

import SwiftUI

struct CardView: View {
    
    //Properties
    @AppStorage("isOnboarding") var isOnboarding = false
    
    var car : Car
    @State var isAnimating = false
    
    //Body
    var body: some View {
        VStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .padding()
                .scaleEffect(isAnimating ? 1 : 0.6)
                .animation(.linear(duration: 0.6), value: isAnimating)
            
            Text(car.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            
            Text(car.description)
                .foregroundStyle(.white)
                .font(.title3)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
            
            Button {
                isOnboarding = false
            } label: {
                Image(systemName: "arrow.right.circle")
                Text("Start")
            }
            .font(.largeTitle)
            .padding(.horizontal , 15)
            .padding(.vertical , 10)
            .foregroundStyle(.white)
            .background(Capsule().strokeBorder(.white , lineWidth: 1.5))
            
        }//: vstack
        .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.5), radius: 2, x: 2, y: 2)
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

#Preview {
    CardView(car: carsData[0])
}
