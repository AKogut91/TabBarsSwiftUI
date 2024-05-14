//
//  ContentView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = Tab.main
    
    enum Tab {
        case main, home, favorites, profile
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            InfoUserView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Main")
                }
                .tag(Tab.main)
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(Tab.home)
            
            MoneyView()
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Money")
                }
                .tag(Tab.favorites)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(Tab.profile)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
