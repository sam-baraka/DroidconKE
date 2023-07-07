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
               ScrollView {
                   VStack (alignment: .leading){
                       
                       Text("Welcome to the largest Focussed Android Developer community in Africa")
                           .multilineTextAlignment(.leading).padding(8)
                       
                       Image("HomeBanner")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .padding(10).frame(width: UIScreen.main.bounds.width)
                       CallForSpeakersView().padding().frame(width: UIScreen.main.bounds.width)
                       SponsorsView().padding().frame(width: UIScreen.main.bounds.width)
                       OrganizedByView().padding().frame(width: UIScreen.main.bounds.width)
                       
                       Spacer()
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
