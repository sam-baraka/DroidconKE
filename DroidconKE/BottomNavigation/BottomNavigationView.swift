//
//  BottomNavigationView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 22/06/2023.
//

import SwiftUI

extension Color {
    init(hex: UInt32) {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0x00FF00) >> 8) / 255.0
        let blue = Double(hex & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }
}

struct BottomNavigationView: View {
    @EnvironmentObject var viewModel: BottomNavigationViewModel
    var body: some View {
        VStack {
       
            HStack{
                Spacer()
                Button(action: {
                               viewModel.changeIndex(index: 0)
                           }) {
                    BottomNavigationItemView(imageString: "BottomHome", isActive: viewModel.index == 0,label: "Home")
                }
                Spacer()
                Button(action: {
                               viewModel.changeIndex(index: 1)
                }) {
                    BottomNavigationItemView(imageString: "BottomFeed", isActive: viewModel.index == 1,label: "Feed")}
                Spacer()
                Button(action: {
                               viewModel.changeIndex(index: 2)
                }) {
                    BottomNavigationItemView(imageString: "BottomSessions", isActive: viewModel.index == 2,label:"Sessions")}
                Spacer()
                Button(action: {
                               viewModel.changeIndex(index: 3)
                }) {
                    BottomNavigationItemView(imageString: "BottomAbout", isActive: viewModel.index == 3,label:"About")}
                Spacer()
                
            }
        }
    }
}

struct BottomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationView()
            .previewDevice(PreviewDevice(rawValue: "Generic"))
                        .previewDisplayName("Generic Device").environmentObject(BottomNavigationViewModel())
    }
}
