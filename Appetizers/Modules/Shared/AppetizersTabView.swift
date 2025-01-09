//
//  ContentView.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//
import SwiftUI

struct AppetizersTabView: View {
    @State private var selectedTab = 0  // Track the selected tab index
    @State private var offset: CGFloat = 0  // Track the drag offset
    @State private var isTabBarVisible = true  // Control TabBar visibility
    let threshold: CGFloat = 100.0  // 100 points as the threshold distance

    var body: some View {
        TabView(selection: $selectedTab) {  // Bind the selectedTab to the TabView
            AppetizersListScreen(viewModel: AppetizersListViewModel())
                .tabItem { Label("Home", systemImage: "house") }
                .tag(0)
            
            AccountScreen(viewModel: AccountViewModel())
                .tabItem { Label("Account", systemImage: "person") }
                .tag(1)
            
            OrderScreen()
                .tabItem { Label("Order", systemImage: "bag") }
                .tag(2)
        }
        .gesture(  // Add swipe gesture to the entire TabView
            DragGesture()
                .onChanged { value in
                    offset = value.translation.width
                    if abs(offset) > threshold {
                        isTabBarVisible = false /*  Hide the TabBar when swiping*/
                    }
                }
                .onEnded { value in
                    if offset > threshold {
                        // Swipe right -> Go to previous tab
                        withAnimation {
                            selectedTab = max(selectedTab - 1, 0) // Ensure it doesn't go below 0
                        }
                    } else if offset < -threshold {
                        // Swipe left -> Go to next tab
                        withAnimation {
                            selectedTab = min(selectedTab + 1, 2) // Ensure it doesn't go above the last tab
                        }
                    }
                    // Reset position and show TabBar again
                    withAnimation {
                        offset = 0
                        isTabBarVisible = true
                    }
                }
        )
        .tint(.primaryGreen)
        .tabBarVisibility(isTabBarVisible) // Custom modifier to control tab bar visibility
    }
}


#Preview {
    AppetizersTabView()
}
