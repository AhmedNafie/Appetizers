//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
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
    

    func downloadImage(fromURLString: String, completed: @escaping (UIImage?) -> Void) {
        let cacheKey = NSString(string: fromURLString)
        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }
        guard let url = URL(string: fromURLString) else {
            completed(nil)
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }
        task.resume()
    }
}
