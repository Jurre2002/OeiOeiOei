//
//  OeiOeiOeiDon't.swift
//  Test2(Oeioeioei)
//
//  Created by Jurre Bosch on 12/10/2023.
//

import Foundation
import SwiftUI

struct OeiOeiOei : View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Achtergrond")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                // Logo 'OeiOeiOei'
                
            VStack {
                Text("Oei!")
                    .font(.system(size: 40, weight: .bold, design: .default))
                Text("Oei!")
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .foregroundColor(.red)
                Text("Oei!")
                    .font(.system(size: 40, weight: .bold, design: .default))
                
                
                    
                Spacer()
                    
            }
            .padding(.top, 45)
                
                //Navigatiemenu
                
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                        print("saved tapped")
                    } label: {
                        Image(systemName: "person.crop.circle")
                            .renderingMode(.original)
                    }
                    Button{
                        print("saved tapped")
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .renderingMode(.original)
                    }
                    
                }
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button{
                        print("saved tapped")
                    } label: {
                        Image(systemName: "heart.fill")
                            .renderingMode(.original)
                    }
                    
                }
                
            }
                //text
                
                VStack(spacing: 5) {
                        Text("Don't feel like it")
                            .font(.system(size: 40, weight: .heavy, design: .default))
                            .frame(width: 300)
                            .multilineTextAlignment(.center)
                            
                        Text("Subject")
                            .font(.system(size: 25, weight: .heavy, design: .default))
                            .frame(width: 180)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 140)
                }
                
                // Buttons voor de verschillende onderwerpen
                
                HStack (spacing: 40){
                    VStack{
                        NavigationLink(destination: Dog(), label: {
                            Text("Dog")
                                .foregroundColor(.white)
                                .frame(width: 120, height: 35)
                                .background(Color("Button2"))
                                .cornerRadius(40)
                                .font(.system(size: 17, weight: .bold, design: .default))
                                .padding(.top, 15)
                        })
                        NavigationLink(destination: Dog(), label: {
                            Text("Bus")
                                .foregroundColor(.white)
                                .frame(width: 120, height: 35)
                                .background(Color("Button1"))
                                .cornerRadius(40)
                                .font(.system(size: 17, weight: .bold, design: .default))
                                .padding(.top, 15)
                        })
                        NavigationLink(destination: Dog(), label: {
                            Text("Family")
                                .foregroundColor(.white)
                                .frame(width: 120, height: 35)
                                .background(Color("Button2"))
                                .cornerRadius(40)
                                .font(.system(size: 17, weight: .bold, design: .default))
                                .padding(.top, 15)
                        })
                        NavigationLink(destination: Dog(), label: {
                            Text("Girlfiend")
                                .foregroundColor(.white)
                                .frame(width: 120, height: 35)
                                .background(Color("Button1"))
                                .cornerRadius(40)
                                .font(.system(size: 17, weight: .bold, design: .default))
                                .padding(.top, 15)
                        })
                    }
                    
                    
                    VStack{
                        NavigationLink(destination: Dog(), label: {
                            Text("Doctor")
                                .foregroundColor(.white)
                                .frame(width: 120, height: 35)
                                .background(Color("Button1"))
                                .cornerRadius(40)
                                .font(.system(size: 17, weight: .bold, design: .default))
                                .padding(.top, 15)
                        })
                        NavigationLink(destination: Dog(), label: {
                            Text("Bridge")
                                .foregroundColor(.white)
                                .frame(width: 120, height: 35)
                                .background(Color("Button2"))
                                .cornerRadius(40)
                                .font(.system(size: 17, weight: .bold, design: .default))
                                .padding(.top, 15)
                        })
                        NavigationLink(destination: Dog(), label: {
                            Text("Friends")
                                .foregroundColor(.white)
                                .frame(width: 120, height: 35)
                                .background(Color("Button1"))
                                .cornerRadius(40)
                                .font(.system(size: 17, weight: .bold, design: .default))
                                .padding(.top, 15)
                        })
                        NavigationLink(destination: Dog(), label: {
                            Text("Sick")
                                .foregroundColor(.white)
                                .frame(width: 120, height: 35)
                                .background(Color("Button2"))
                                .cornerRadius(40)
                                .font(.system(size: 17, weight: .bold, design: .default))
                                .padding(.top, 15)
                        })
                        
                    }
                    
                    
                }
                .padding(.top, 220)
                
                
            }
            
            
        }
        .navigationBarBackButtonHidden(false)

        
        
    }
}

#Preview {
    OeiOeiOei()
}

// Ik probeerde via deze methode code te besparen alleen kreeg ik het niet voor elkaar om naar de pagina te linken vanwege errors.

//struct Reden : View {
//    var reden : String
//    
//    
//    var body: some View {
//        VStack {
//            Button {
//            } label: {
//                Text(reden)
//                    .foregroundColor(.white)
//                    .frame(width: 120, height: 35)
//                    .background(Color("Button1"))
//                    .cornerRadius(40)
//                    .font(.system(size: 17, weight: .bold, design: .default))
//                    .padding(.top, 15)
//            }
//            
//        }
//        
//    }
//}
//struct Reason : View {
//    var reason : String
//    
//    var body: some View {
//        VStack {
//            Button {
//            } label: {
//                Text(reason)
//                    .foregroundColor(.white)
//                    .frame(width: 120, height: 35)
//                    .background(Color("Button2"))
//                    .cornerRadius(40)
//                    .font(.system(size: 17, weight: .bold, design: .default))
//                    .padding(.top, 15)
//            }
//            
//        }
//    }
//}
