//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import Alamofire
import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let appetizersEndpoint = "appetizers"
    private let appetizersURL = baseURL + appetizersEndpoint
    private init() {}
    
    func getAppetizers() async throws -> [Appetizer] {
        guard URL(string: appetizersURL) != nil else {
            throw AppetizersError.invalidURL
        }
        
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(appetizersURL).responseDecodable(of: AppetizerResponse.self) { response in
                switch response.result {
                case .success(let appetizerResponse):
                    continuation.resume(returning: appetizerResponse.request)
                case .failure:
                    continuation.resume(throwing: AppetizersError.invalidData)
                }
            }
        }
    }
}
