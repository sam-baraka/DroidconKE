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
            Image("SplashImage").frame(height: 495).padding(8)
    }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
        
    }
}
