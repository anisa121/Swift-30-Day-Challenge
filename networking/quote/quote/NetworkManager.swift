//
//  NetworkManager.swift
//  quote
//
//  Created by Anisa on 27.02.2026.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    func fetchData() async throws -> Quote {
        guard let url = URL(string: "https://api.quotable.io/random") else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession(conf)
    }
    
}
