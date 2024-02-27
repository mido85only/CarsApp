//
//  DetailsView.swift
//  CarsApp
//
//  Created by mohammed on 24/02/2024.
//

import SwiftUI

struct DetailsView: View {
    //Properties
    
    var car :Car
    
    var body: some View {
        ScrollView(.vertical , showsIndicators: false){
            VStack {
                //Header view
                HeaderView(car: car)
                
                VStack(alignment:.leading , spacing: 15){
                    //Car title
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(car.gradientColors[0])
                    
                    // Car headlin
                    Text(car.headline)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    // Car Model
                    ModelView(car: car)
                    
                    //Description
                    Text("Learn more about \(car.title)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(car.gradientColors[0])
                    
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    //links
                    FooterView()
                        .padding(.bottom , 40)
                }// vstack
                .padding(.horizontal , 15)
                .frame(maxWidth: 620)
            }// vstack end of main screen
        }// scroll view
        .ignoresSafeArea()
    }
}

#Preview {
    DetailsView(car: carsData[1])
}


struct FooterView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Link("Source Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Spacer()
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}
