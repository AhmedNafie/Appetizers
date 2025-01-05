//
//  AppetizersListScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct AppetizersListScreen: View {
    @StateObject var viewModel: AppetizersListViewModel
    var body: some View {
        NavigationView {
            List(viewModel.appetizers, id: \.id) { appetizer in
                AppetizersListCellView(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,message: alertItem.message,dismissButton: alertItem.dismissButton)
        }
    }

}

#Preview {
    AppetizersListScreen(viewModel: AppetizersListViewModel())
}
