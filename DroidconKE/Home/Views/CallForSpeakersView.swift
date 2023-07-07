//
//  CallForSpeakersView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 19/06/2023.
//

import SwiftUI

struct CallForSpeakersView: View {
    var body: some View {
        HStack(alignment:.center){
            Image("CFPImage")
            VStack{
                Text("Call for Speakers").foregroundColor(.white).font(.system(size: 17)).bold()
                Text("Apply to be a speaker").foregroundColor(.black).font(.system(size: 10))
            }
            Image(systemName: "chevron.right")
                        .font(.title)
                        .foregroundColor(.white).padding()
        }.frame(height: 88).background(Color("AccentColor").colorScheme(.light)).cornerRadius(8)
    }
    
}

   struct CallForSpeakersView_Previews: PreviewProvider {
       static var previews: some View {
           CallForSpeakersView().previewLayout(.sizeThatFits)
       }
   }
