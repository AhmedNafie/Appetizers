//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let appetizersEndpoint = "appetizers"
    private let appetizersURL = baseURL + appetizersEndpoint
    private init() {}
    
    func getAppetizers() async throws -> [Appetizer] {
        guard let url = URL(string: appetizersURL) else {
            throw AppetizersError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
            do {
                let decoder = JSONDecoder()
                return try decoder.decode(AppetizerResponse.self, from: data).request
            } catch {
                throw AppetizersError.invalidData
            }
        }
}
