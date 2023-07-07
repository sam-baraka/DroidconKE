//
//  AppView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 16/06/2023.
//

import SwiftUI

struct AppView: View {
    @State private var showSplash = true
    @EnvironmentObject var viewModel: BottomNavigationViewModel
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        
        Group {
            if !showSplash {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                showSplash = false
                            }
                        }
                    }
            } else {
                // Add your main content view here
                NavigationView{ VStack {
                    switch viewModel.index{
                    case 0:
                        HomeView()
                    case 1:
                        FeedView()
                    case 2:
                        SessionView()
                    case 3:
                        AboutView()
                    default:
                        Text("No View Selected")
                    }
                    
                    Spacer()
                    BottomNavigationView().frame(height: 50)
                    
                }     .toolbar {
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
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView().environmentObject(BottomNavigationViewModel())
    }
}
