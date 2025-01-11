//
//  Order.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 11/01/2025.
//

import Foundation

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
