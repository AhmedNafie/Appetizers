//
//  OrderScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct OrderScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(Appetizer.orderAppetizers) { appetizer in
                        AppetizersListCellView(appetizer: appetizer)
                    }
                }
                .listStyle(PlainListStyle())
                
                OrderButton(title: "$99.99 - Place Order")
            }
                .navigationTitle("🗒️ Orders")
        }
    }
}

#Preview {
    OrderScreen()
}
