//
//  HomeViewModel.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import Foundation

struct City: Hashable {
    let name: String
    let imageURL: URL
}

class HomeViewModel: ObservableObject {
    @Published var cityData: [City] = []

    init() {
        // Initialize cityData with some data
        self.cityData = [
            City(name: "New York", imageURL: URL(string: "https://images.unsplash.com/photo-1715607817921-aa6417a19dbd?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!),
            City(name: "Paris", imageURL: URL(string: "https://images.unsplash.com/photo-1715091618825-70f04f4cff72?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!),
            City(name: "Tokyo", imageURL: URL(string: "https://images.unsplash.com/photo-1715517157582-c4921c5e29c7?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!)
        ]
    }
}
