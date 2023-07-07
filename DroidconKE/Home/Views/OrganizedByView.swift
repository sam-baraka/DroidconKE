//
//  OrganizedByView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 06/07/2023.
//

import SwiftUI

struct OrganizedByView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        let backgroundColor = colorScheme == .dark ? Color.black : Color(hex: 0xffF5F5F5)
        let textColor = colorScheme == .dark ? Color.white : Color(hex: 0xff000CEB)
        VStack{
            Text("Organised by")
                .foregroundColor(textColor)
                .bold()
                .padding(8)
            HStack{
                Spacer()
                Image("Android254")
                Spacer()
                Image("KotlinKenya")
                Spacer()
                Image("FlutterDevsKE")
                Spacer()
            }.frame(maxWidth: .infinity)
                .padding(8)

            HStack{
                Spacer()
                Image("AppsLab")
                Spacer()
                Image("EarlyCamp")
                Spacer()
                Image("TiskosKenya")
                Spacer()
            }.frame(maxWidth: .infinity)
                .padding(8)
        }.frame(height: 250)
            .background(backgroundColor)
            .cornerRadius(8)
    }
}

struct OrganizedByView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizedByView().previewLayout(.sizeThatFits)
    }
}
