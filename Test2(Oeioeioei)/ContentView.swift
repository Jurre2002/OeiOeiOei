//
//  ContentView.swift
//  Test2(Oeioeioei)
//
//  Created by Jurre Bosch on 05/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("Lightblue")]), startPoint: .topLeading, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Sintanna Parochie, NL")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("15°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                }
                .padding(.bottom, 60)
                
                HStack(spacing: 25) {
                    
                        Dagen(dayoftheweek: "TUE",
                              imagename: "cloud.sun.fill",
                              temperature: 15)
                        Dagen(dayoftheweek: "WED",
                              imagename: "smoke.fill",
                              temperature: 15)
                        Dagen(dayoftheweek: "FRI",
                              imagename: "smoke.fill",
                              temperature: 16)
                        Dagen(dayoftheweek: "SAT",
                              imagename: "cloud.sun.fill",
                              temperature: 17)
                        Dagen(dayoftheweek: "SUN",
                              imagename: "cloud.sun.fill",
                              temperature: 18)
                
                    }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change location")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .frame(width: 220, height: 50)
                        .background(Color.blue)
                        .cornerRadius(20.0)
                    
                        
                    
                }
                Spacer()
                }
                    
            }
        }
        
    }


#Preview {
    ContentView()
}

struct Dagen: View {
    
    var dayoftheweek: String
    var imagename: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayoftheweek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 27, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
