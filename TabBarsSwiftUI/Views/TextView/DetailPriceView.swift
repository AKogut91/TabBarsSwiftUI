//
//  DetailPriceView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import SwiftUI

struct DetailPriceView: View {
    let leftText: String
    let rightText: String
    
    var body: some View {
        HStack {
            Text(leftText)
                .font(.headline)
                .foregroundColor(.primary)
            Spacer()
            Text(rightText)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
