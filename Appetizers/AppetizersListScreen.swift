//
//  AppetizersListScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct AppetizersListScreen: View {
    @State private var appetizers: [Appetizer] = []
    var body: some View {
        NavigationView {
            List(appetizers, id: \.id) { appetizer in
                AppetizersListCellView(appetizer: appetizer)            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            getAppetizers()
        }
    }
    func getAppetizers()  {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                    
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    AppetizersListScreen()
}

