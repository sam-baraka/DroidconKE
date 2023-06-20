//
//  SponsorsView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 20/06/2023.
//

import SwiftUI

struct SponsorsView: View {
    var body: some View {
        VStack{
            Text("Sponsors").foregroundColor(.white).bold().padding(8)
            Image("GoogleLogo").frame(width: 40).padding(8)
            HStack{
                Image("AndelaLogo")
                Image("HoverLogo")
                Image("JetbrainsLogo")
            }.frame(height: 23).padding(8)
        }.frame(height: 200).background(Color(.black))
    }
}

struct SponsorsView_Previews: PreviewProvider {
    static var previews: some View {
        SponsorsView().previewLayout(.sizeThatFits)
    }
}
