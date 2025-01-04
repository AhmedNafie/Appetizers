//
//  MockData.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//



struct MockData {
    static let sampleAppetizer = Appetizer(
        protein:14 , calories: 132, price: 9.99, name: "Test Appetizer", carbs: 12,
        imageURL: "", description: "Test desription for yummy appetizer", id: 003)
    
    static let sampleAppetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
