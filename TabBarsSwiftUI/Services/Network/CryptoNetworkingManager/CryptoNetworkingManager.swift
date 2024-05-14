//
//  CryptoNetworkingManager.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/14/24.
//

import Foundation

class CryptoNetworkingManager {
    static let shared = CryptoNetworkingManager()
    
    func fetchData(completion: @escaping (CryptoModel?) -> Void) {
        guard let url = URL(string: "https://api.coindesk.com/v1/bpi/currentprice.json") else {
            print("Invalid URL")
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let cryptoModel = try decoder.decode(CryptoModel.self, from: data)
                completion(cryptoModel)
            } catch {
                print("Error decoding JSON: \(error)")
                completion(nil)
            }
        }.resume()
    }
}

