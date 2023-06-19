//
//  SplashView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 16/06/2023.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        // Add your splash screen content here
        VStack {
                       Spacer()
                       Image("SplashImage")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(width: 276.12, height: 494.4)
    }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
        
    }
}
