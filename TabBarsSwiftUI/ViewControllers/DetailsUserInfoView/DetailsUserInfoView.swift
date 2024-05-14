//
//  DetailsUserInfoView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import SwiftUI

struct DetailsUserInfoView: View {
    var user: User
    
    var body: some View {
        VStack {
            Text("User Information")
                .font(.title)
                .padding()
            Text("First Name: \(user.firstName)")
            Text("Last Name: \(user.lastName)")
            Text("Email: \(user.email)")
            Text("Phone: \(user.phone)")
            Spacer()
        }
        .padding()
    }
}
