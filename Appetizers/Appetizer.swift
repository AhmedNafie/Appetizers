//
//  Appetizer.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import Foundation

// MARK: - AppetizerResponse
struct AppetizerResponse {
    let request: [Appetizer]
}

// MARK: - Appetizer
struct Appetizer: Decodable, Identifiable {
    let protein: Int
    let calories: Int
    let price: Double
    let name: String
    let carbs: Int
    let imageURL: String
    let description: String
    let id: Int
}
