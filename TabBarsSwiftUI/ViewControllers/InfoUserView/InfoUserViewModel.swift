//
//  InfoUserViewModel.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var email: String
    var phone: String
}


class InfoUserViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var searchText: String = ""
    @Published var selectedUser: User?
    
    init() {
        // Initialize user data
        users = [
            User(firstName: "John", lastName: "Doe", email: "john@example.com", phone: "1234567890"),
            User(firstName: "Alice", lastName: "Smith", email: "alice@example.com", phone: "0987654321"),
            User(firstName: "Bob", lastName: "Johnson", email: "bob@example.com", phone: "9876543210"),
            User(firstName: "Emily", lastName: "Williams", email: "emily@example.com", phone: "5678901234"),
            User(firstName: "Michael", lastName: "Brown", email: "michael@example.com", phone: "6789012345"),
            User(firstName: "Emma", lastName: "Jones", email: "emma@example.com", phone: "3456789012"),
            User(firstName: "Daniel", lastName: "Garcia", email: "daniel@example.com", phone: "4567890123"),
            User(firstName: "Olivia", lastName: "Martinez", email: "olivia@example.com", phone: "2345678901"),
            User(firstName: "William", lastName: "Anderson", email: "william@example.com", phone: "7890123456"),
            User(firstName: "Sophia", lastName: "Taylor", email: "sophia@example.com", phone: "8901234567")
        ]
    }
}

