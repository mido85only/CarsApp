//
//  SettingsView.swift
//  CarsApp
//
//  Created by mohammed on 26/02/2024.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isOnboarding") var isOnboarding = true

    @State var stackPath : [Int] = []
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack(path: $stackPath){
            
            VStack{
                //Group box
                GroupBox(){
                    HStack{
                        Text("cars".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                    }
                    Divider()
                    HStack{
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80 , height: 80 , alignment: .center)
                        Text("Cars App includes very important information about the lexcury cars, It has details about the history of diffrent models")
                    }
                    
                }//:Group box
                
                //Check box
                Toggle(isOn: $isOnboarding, label: {
                    if isOnboarding {
                        Text("Restarted".uppercased())
                            .font(.title)
                            .foregroundStyle(.green)
                    }else{
                        Text("Restart".uppercased())
                            .font(.title)
                            .foregroundStyle(.gray)
                    }
                })
                .padding()
                .background(.ultraThickMaterial)
                .clipShape(.rect(cornerRadius: 8))
                
                Spacer()
                
            }
            .navigationTitle("Settings")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.title2)
                    })
                }
            }
            
        }//: Navigation stack
        
    }
}

#Preview {
    SettingsView()
}
