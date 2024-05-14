//
//  ImageViewModel.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import SwiftUI
import Combine

class FetchingImageView: ObservableObject {
    @Published var image: UIImage?

    private var cancellable: AnyCancellable?

    func fetchImage(from url: URL) {
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .assign(to: \.image, on: self)
    }
}

