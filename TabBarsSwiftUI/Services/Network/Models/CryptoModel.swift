//
//  CryptoModel.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import Foundation

// MARK: - CryptoModel
struct CryptoModel: Codable {
    let time: Time
    let disclaimer, chartName: String
    let bpi: Bpi
}

// MARK: - Bpi
struct Bpi: Codable {
    let usd, gbp, eur: Eur

    enum CodingKeys: String, CodingKey {
        case usd = "USD"
        case gbp = "GBP"
        case eur = "EUR"
    }
}

// MARK: - Eur
struct Eur: Codable {
    let code, symbol, rate, description: String?
    let rateFloat: Double?

    enum CodingKeys: String, CodingKey {
        case code, symbol, rate, description
        case rateFloat = "rate_float"
    }
}

// MARK: - Time
struct Time: Codable {
    let updated: String?
    let updatedISOString: String? // Change to String
    var updatedISO: Date? { // Computed property to convert the string to a Date
        guard let dateString = updatedISOString else {
            return nil
        }
        let formatter = ISO8601DateFormatter()
        return formatter.date(from: dateString)
    }
    let updateduk: String?
}
