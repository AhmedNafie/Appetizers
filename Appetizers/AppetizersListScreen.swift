//
//  AppetizersListScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct AppetizersListScreen: View {
    var body: some View {
        NavigationView {
            List(MockData.sampleAppetizers, id: \.id) { appetizer in
                AppetizersListCellView(appetizer: appetizer)            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizersListScreen()
}

