//
//  ContentView.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct AppetizersTabView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        TabView {
            AppetizersListScreen(viewModel: AppetizersListViewModel())
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountScreen(viewModel: AccountViewModel())
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderScreen()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
                .badge(order.items.count)
        }
        .tint(.primaryGreen)
    }
}

#Preview {
    AppetizersTabView()
}
