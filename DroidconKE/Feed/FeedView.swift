//
//  FeedView.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 21/06/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
           ScrollView {
               VStack {
                   ForEach(0..<10) { index in
                       FeedItemView()
                           .padding()
                   }
               }
           }
       }
   }
struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
