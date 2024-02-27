//
//  CarsListView.swift
//  CarsApp
//
//  Created by mohammed on 22/02/2024.
//

import SwiftUI

struct CarsListView: View {
    @State var stackPath : [Int] = []
    @State var settingViewPresented = false
    
    var body: some View {
        NavigationStack(path: $stackPath){
            List{
                ForEach(0..<carsData.count , id: \.self) { item in
                    NavigationLink(value: item){
                        CarCellView(car: carsData[item])
                            .padding(.vertical , 4)
                    }
                }
            }
            .navigationTitle("Cars")
            .navigationBarTitleDisplayMode(.large)
            .navigationDestination(for: Int.self){ index in  DetailsView(car: carsData[index])
            }
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button(action: {
                        settingViewPresented = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                            
                    })

                }
            }
            .sheet(isPresented: $settingViewPresented, content: {
                SettingsView()
            })
        }
        
    }
}

#Preview {
    CarsListView()
}
