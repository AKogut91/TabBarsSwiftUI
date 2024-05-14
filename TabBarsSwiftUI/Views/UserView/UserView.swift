//
//  UserView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import SwiftUI

struct UserView: View {
    var user: User
    @Binding var selectedUser: User?
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.firstName)
                    .font(.headline)
                Text(user.lastName)
                    .font(.subheadline)
            }
            
            Spacer()
            
            Image(systemName: "info.circle")
                .foregroundColor(.gray)
                .onTapGesture {
                    selectedUser = user
                }
        }
        .padding()
    }
}
