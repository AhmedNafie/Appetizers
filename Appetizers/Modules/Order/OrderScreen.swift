//
//  OrderScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct OrderScreen: View {
    @State private var orderItems = Appetizer.orderAppetizers
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizersListCellView(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    OrderButton(title: "$99.99 - Place Order")
                }
                .navigationTitle("🗒️ Orders")

                if orderItems.isEmpty {
                    EmptyOrderScreen()
                }
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderScreen()
}
