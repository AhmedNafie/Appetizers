//
//  AppetizersListScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct AppetizersListScreen: View {
    @StateObject var viewModel: AppetizersListViewModel
    @State private var isShowingDetail = false

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers, id: \.id) { appetizer in
                    AppetizersListCellView(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            if isShowingDetail {
                AppetizerDetailsScreen(appetizer: Appetizer.sampleAppetizer, isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading {
                ProgressView()
                    .tint(.primaryGreen)
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,message: alertItem.message,dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizersListScreen(viewModel: AppetizersListViewModel())
}
