//
//  Family.swift
//  Test2(Oeioeioei)
//
//  Created by Jurre Bosch on 12/10/2023.
//

import Foundation

import SwiftUI



struct Family : View {
    
    @State var reason = Int.random(in: 0...(Reasons.family.count-1))
       
       
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
                   
                   VStack {
                           Text("To Late")
                               .font(.system(size: 40, weight: .heavy, design: .default))
                               .frame(width: 180)
                               .multilineTextAlignment(.center)
                               
                           Text("Family")
                               .font(.system(size: 30, weight: .heavy, design: .default))
                               .frame(width: 180)
                               .multilineTextAlignment(.center)
                               .padding(.bottom, 140)
                   }
                   
                   VStack (spacing: 10){

                       
                   let reden = Reasons.family[reason]
                       Text ("\(reden)")
                           .foregroundStyle(Color.black)
                           .font(.system(size: 25, weight: .bold, design: .default))
                           .multilineTextAlignment(.center)
                           .padding()
                       
                       Button{
                           print("saved tapped")
                       } label: {
                           Image(systemName: "heart")
                               .renderingMode(.original)
                               .font(.system(size: 35))
                               .padding(.top, 5)
                       }
                       
                       Button("Reroll")
                       {
                           reason = Int.random(in: 0...(Reasons.family .count-1))
                       }
                       .foregroundColor(.white)
                       .frame(width: 200, height: 50)
                       .background(Color.black)
                       .cornerRadius(40)
                       .font(.system(size: 22, weight: .bold, design: .default))
                       .padding(.top, 25)

                   }
                   .padding(.top, 250)
       
               
                
                   

               }
               
           }
           
           .navigationBarBackButtonHidden(false)

           
           
       }
    
}


#Preview {
    Family()
}
