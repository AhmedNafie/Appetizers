//
//  OrderScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct OrderScreen: View {
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizersListCellView(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    primaryColorButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order") {
                        print("test")
                    }
                }
                .navigationTitle("🗒️ Orders")

                if order.items.isEmpty {
                    EmptyOrderScreen()
                }
            }
        }
    }
}

#Preview {
    OrderScreen()
}
