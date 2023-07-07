//
//  FeedItemView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 07/07/2023.
//

import SwiftUI

struct FeedItemView: View {
    var body: some View {
        VStack{
            Text("We are pleased to have a team from Andela Kenya who will talk about Software Engineers to the Power of  X from an Employer's Perspective")
            Rectangle()
                         .frame(height: 200)
                         .foregroundColor(.gray)
                         .overlay( NetworkImage())
            HStack {
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.blue)
                        
                        Text("Share")
                        
                        Spacer()
                        
                        Text("5 minutes ago")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
            
        }
    }
}

struct FeedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeedItemView()
    }
}
