//
//  AppView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 16/06/2023.
//

import SwiftUI

struct AppView: View {
    @State private var showSplash = true

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
                VStack {
                    HomeView()
                    Spacer()
                    BottomNavigationView().frame(height: 50)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: -2)
                }
            }
        }.padding(.bottom, 20).edgesIgnoringSafeArea(.bottom)
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView().environmentObject(BottomNavigationViewModel())
    }
}
