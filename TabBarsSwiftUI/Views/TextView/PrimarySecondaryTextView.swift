//
//  PrimarySecondaryTextView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/13/24.
//

import SwiftUI

struct PrimarySecondaryTextView: View {
    var primaryText: String
    var secondaryText: String
    
    var body: some View {
        VStack {
            Text(primaryText)
                .font(.title3)
                .foregroundColor(.primary)
            
            Text(secondaryText)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}
