//
//  InfoUserView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 4/30/24.
//

import SwiftUI

struct InfoUserView: View {
    @ObservedObject var viewModel = InfoUserViewModel()
    
    var filteredUsers: [User] {
           if viewModel.searchText.isEmpty {
               return viewModel.users
           } else {
               return viewModel.users.filter { $0.firstName.lowercased().contains(viewModel.searchText.lowercased()) || $0.lastName.lowercased().contains(viewModel.searchText.lowercased()) }
           }
       }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $viewModel.searchText)
                    .padding(.top)
                
                List(filteredUsers, id: \.firstName) { user in
                    UserView(user: user, selectedUser: $viewModel.selectedUser)
                }
                .sheet(item: $viewModel.selectedUser) { user in
                    DetailsUserInfoView(user: user)
                }
            }
            .navigationTitle("Info")
        }
    }
}
