//
//  Chose.swift
//  Test2(Oeioeioei)
//
//  Created by Jurre Bosch on 09/10/2023.
//

import Foundation
import SwiftUI

struct Chose : View {
    var body: some View {
        NavigationView {
            
            ZStack {
                Color("Achtergrond")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text("Oei!")
                        .font(.system(size: 45, weight: .bold, design: .default))
                    Text("Oei!")
                        .font(.system(size: 45, weight: .bold, design: .default))
                        .foregroundColor(.red)
                    Text("Oei!")
                        .font(.system(size: 45, weight: .bold, design: .default))
                    
                    
                        
                    Spacer()
                        
                }
                .padding(.top, 25)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button{
                        } label: {
                            Image(systemName: "person.crop.circle")
                                .renderingMode(.original)
                        }
                        Button{
                        } label: {
                            Image(systemName: "gearshape.fill")
                                .renderingMode(.original)
                        }
                        
                    }
                    ToolbarItemGroup(placement: .navigationBarLeading){
                        Button{
                        } label: {
                            Image(systemName: "heart.fill")
                                .renderingMode(.original)
                        }
                        
                    }
                    
                }
                VStack(spacing: 5){
                    Text("Pick Your Reason")
                        .font(.system(size: 40, weight: .heavy, design: .default))
                        .frame(width: 180)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 70)
                }
                
                VStack{
                    Spacer()
                    NavigationLink(destination: OeiOei(), label: {
                        Text("To late")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color("Button1"))
                        .cornerRadius(40)
                        .font(.system(size: 25, weight: .bold, design: .default))
                            
                    })
                    NavigationLink(destination: OeiOeiOei(), label: {
                        Text("Don't feel like it")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.black)
                        .cornerRadius(40)
                        .font(.system(size: 22, weight: .bold, design: .default))
                        .padding(.top, 25)
                    })
                    .padding(.bottom, 170)
                }
                
                

            }
            
        }
        
    }
}

#Preview {
    Chose()
}

//struct Optie : View {
//    var optie : String
//
//    var body: some View {
//        VStack {
//            Button {
//            } label: {
//                Text(optie)
//                    .foregroundColor(.white)
//                    .frame(width: 150, height: 40)
//                    .background(Color("Button1"))
//                    .cornerRadius(40)
//                    .font(.system(size: 20, weight: .bold, design: .default))
//                    .padding(.top, 15)
//            }
//
//        }
//
//    }
//}

//struct Optie2 : View {
//    var optie2 : String
//    
//    var body: some View {
//        VStack {
//            Button {
//            } label: {
//                Text(optie2)
//                    .foregroundColor(.white)
//                    .frame(width: 150, height: 40)
//                    .background(Color.black)
//                    .cornerRadius(40)
//                    .font(.system(size: 17, weight: .bold, design: .default))
//                    .padding(.top, 15)
//            }
//            
//        }
//        
//    }
//}
