//
//  MoneyView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 4/30/24.
//

import SwiftUI

struct MoneyView: View {
    @State private var cryptoData: CryptoModel?
    
    var body: some View {
        NavigationView {
            VStack {
                Text(cryptoData?.chartName ?? "")
                    .font(.headline)
                    .foregroundColor(.primary)
                DetailPriceView(leftText: cryptoData?.bpi.usd.rate  ?? "",
                                rightText: cryptoData?.bpi.usd.code ?? "")
                DetailPriceView(leftText: cryptoData?.bpi.eur.rate  ?? "",
                                rightText: cryptoData?.bpi.eur.code ?? "")
                Text(cryptoData?.disclaimer ?? "")
                    .font(.subheadline)
                    .foregroundColor(.primary)
                    .padding()
                Spacer()
            }
            .padding()
            .onAppear {
                fetchData()
            }.navigationTitle("Excange Info")
        }
    }
    
    func fetchData() {
        CryptoNetworkingManager.shared.fetchData { data in
            if let data = data {
                DispatchQueue.main.async {
                    self.cryptoData = data
                }
            }
        }
    }
}
