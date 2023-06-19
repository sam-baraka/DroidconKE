//
//  HomeView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 19/06/2023.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
           NavigationView {
               VStack (alignment: .leading){
                   
                   Text("Welcome to the largest Focussed Android Developer community in Africa")
                       .multilineTextAlignment(.leading).padding(8)
                   
                   Image("HomeBanner")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .padding(8).frame(width: UIScreen.main.bounds.width)
                   CallForSpeakersView().padding(8).frame(width: UIScreen.main.bounds.width)
                   
                   Spacer()
               }
               .toolbar {
                   ToolbarItem(placement: .navigationBarLeading) {
                       if colorScheme == .dark {
                           Image("LogoTextDark").frame(width: 137,height: 25)
                               .padding()
                                  } else {
                                      Image("LogoText").frame(width: 137,height: 25)
                                          .padding()
                                  }
                      
                   }
                   
                   ToolbarItem(placement: .navigationBarTrailing) {
                       Button(action: {
                           // Perform action for other button
                       }) {
                           Circle()
                               .foregroundColor(Color("AccentColor"))
                                           .frame(width: 30, height: 30)
                                           .overlay(Image(systemName: "lock.fill").frame(width: 14,height: 14).foregroundColor(.white)).colorScheme(.light)
                       }
                   }
               }
           }
       }
   }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
