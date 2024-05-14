//
//  ImageView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import SwiftUI

struct ImageView: View {
    @ObservedObject var viewModel: FetchingImageView
    let imageURL: URL

    init(imageURL: URL) {
        self.imageURL = imageURL
        viewModel = FetchingImageView()
        viewModel.fetchImage(from: imageURL)
    }

    var body: some View {
        Group {
            if let image = viewModel.image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                ProgressView() // Show a loading indicator while image is being fetched
            }
        }
    }
}
