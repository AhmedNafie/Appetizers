//
//  ContentView.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        TabView {
            AppetizersListScreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountScreen()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderScreen()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
    }
}

#Preview {
    AppetizersTabView()
}
