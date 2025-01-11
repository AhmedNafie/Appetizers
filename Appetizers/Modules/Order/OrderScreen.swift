//
//  OrderScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct OrderScreen: View {
    @EnvironmentObject var order: Order
    @State private var showingAlert = false
    
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
                        order.items.removeAll()
                        showingAlert = true
                    }
                    .alert(isPresented: $showingAlert) {
                                          Alert(
                                              title: Text("Order Placed"),
                                              message: Text("Your order has been successfully placed!"),
                                              dismissButton: .default(Text("OK"))
                                          )
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
