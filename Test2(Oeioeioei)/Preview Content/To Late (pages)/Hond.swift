//
//  Generate.swift
//  Test2(Oeioeioei)
//
//  Created by Jurre Bosch on 06/10/2023.
//

import Foundation
import SwiftUI



struct Hond : View {
    
    //Functie van de randomizer
    
    @State var reason = Int.random(in: 0...(Reasons.Hond.count-1))
       
       
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
                               
                           Text("dog")
                               .font(.system(size: 30, weight: .heavy, design: .default))
                               .frame(width: 180)
                               .multilineTextAlignment(.center)
                               .padding(.bottom, 140)
                   }
                   
                   VStack (spacing: 10){

                       //Roep ik de functie aan en laat het zien op de app.
                       
                   let reden = Reasons.Hond[reason]
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
                       
                       //Button om een andere reden te krijgen.
                       
                       Button("Reroll")
                       {
                           reason = Int.random(in: 0...(Reasons.Hond.count-1))
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
    
   
        
    
    //Text van een andere versie
    
    
    /*                VStack {
     Text("Oei!")
     .font(.system(size: 45, weight: .medium, design: .default))
     Text("Oei!")
     .font(.system(size: 45, weight: .medium, design: .default))
     .foregroundColor(.red)
     Text("Oei!")
     .font(.system(size: 45, weight: .medium, design: .default))
     
     
     
     Spacer()
     
     }
     .padding(.top, 45)
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
     VStack(spacing: 5) {
     Text("To late")
     .font(.system(size: 40, weight: .heavy, design: .default))
     .frame(width: 180)
     .multilineTextAlignment(.center)
     
     Text("Dog")
     .font(.system(size: 25, weight: .heavy, design: .default))
     .frame(width: 180)
     .multilineTextAlignment(.center)
     .padding(.bottom, 80)
     
     }
     */
}


#Preview {
    Hond()
}


