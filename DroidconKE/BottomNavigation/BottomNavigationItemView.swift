//
//  BottomNavigationItemView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 26/06/2023.
//

import SwiftUI

struct BottomNavigationItemView: View {
    @StateObject private var viewModel = BottomNavigationViewModel()
    
    private let imageString: String
    private let isActive: Bool
    private let label : String
    
    init(imageString: String, isActive: Bool,label: String) {
        self.imageString = imageString
        self.isActive = isActive
        self.label = label
    }
    
    var body: some View {
        
        VStack{
            if isActive {
                VStack{
                    Image(imageString).resizable()
                    .colorInvert()
                    .colorMultiply(Color(hex: 0x000CEB))
                
                    .frame(width: 20, height: 20)
                .foregroundColor(Color(hex: 0x000CEB))
                    Text(label).font(.system(size: 10)).foregroundColor(.secondaryColor)
                }
        } else {
            VStack{ Image(imageString)
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(label).font(.system(size: 10)).foregroundColor(.black)
            }
        }
         
        }
    }
}

struct BottomNavigationItemView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationItemView(
        imageString: "BottomHome",
        isActive: true,
        label: "Home"
        ).previewLayout(.sizeThatFits)
            .padding()
    }
}
