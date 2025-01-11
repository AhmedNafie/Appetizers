//
//  Order.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 11/01/2025.
//

import Foundation

import SwiftUI

final class Order: ObservableObject {
  
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    @Published var items: [Appetizer] = []
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
