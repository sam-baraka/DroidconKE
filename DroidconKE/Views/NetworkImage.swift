//
//  NetworkImage.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 07/07/2023.
//

import SwiftUI

struct NetworkImage: View {
    var imageURLString: String = "https://th.bing.com/th/id/OIG.4icQBpovt1AYbKmysxxM?pid=ImgGn"

        var body: some View {
            AsyncImage(url: URL(string: imageURLString)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity)
                    .alignmentGuide(.top) { _ in 0 }
            } placeholder: {
                // Placeholder view while the image is being loaded
                ProgressView()
            }
        }
    }

struct NetworkImage_Previews: PreviewProvider {
    static var previews: some View {
        NetworkImage()
    }
}
