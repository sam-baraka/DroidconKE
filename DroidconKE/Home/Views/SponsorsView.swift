//
//  SponsorsView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 20/06/2023.
//

import SwiftUI

struct SponsorsView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
            let backgroundColor = colorScheme == .dark ? Color.black : Color(hex: 0xffF5F5F5)
        let textColor = colorScheme == .dark ? Color.white : Color(hex: 0xff000CEB)
                
            VStack {
                Text("Sponsors")
                    .foregroundColor(textColor)
                    .bold()
                    .padding(8)
                
                Image("GoogleLogo")
                    .frame(width: 40)
                    .padding(8)
                
                HStack {
                    Spacer()
                    Image("AndelaLogo")
                    Spacer()
                    Image("HoverLogo")
                    Spacer()
                    Image("JetbrainsLogo")
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(8)
            }
            .frame(height: 200)
            .background(backgroundColor)
            .cornerRadius(8)
        }
    }

struct SponsorsView_Previews: PreviewProvider {
    static var previews: some View {
        SponsorsView().previewLayout(.sizeThatFits)
    }
}
