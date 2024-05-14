//
//  HomeView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 4/30/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.cityData, id: \.self) { city in
                CityView(city: city)
            }
            .navigationTitle("Home")
            .listStyle(PlainListStyle())
        }
    }
}
