//
//  CityView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import SwiftUI

struct CityView: View {
    let city: City
    @State private var screenWidth: CGFloat = UIScreen.main.bounds.width

    var body: some View {
        VStack {
            // Display the city image
            AsyncImage(url: city.imageURL) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: screenWidth, height: 200)
                        .clipped()
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: screenWidth, height: 200)
                        .clipped()
                @unknown default:
                    EmptyView()
                }
            }
            .frame(height: 200)

            // Display the city name
            Text(city.name)
                .font(.headline)
        }
        .onAppear {
            screenWidth = UIScreen.main.bounds.width
        }
    }
}
