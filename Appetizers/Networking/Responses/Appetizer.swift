//
//  Appetizer.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import Foundation

// MARK: - AppetizerResponse
struct AppetizerResponse: Decodable {
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

extension Appetizer {
    static let sampleAppetizer = Appetizer(
        protein:14 , calories: 132, price: 9.99, name: "Test Appetizer", carbs: 12,
        imageURL: "", description: "Test desription for yummy appetizer", id: 003)
    
    static let sampleAppetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
