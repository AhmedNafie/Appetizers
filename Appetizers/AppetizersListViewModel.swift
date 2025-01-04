//
//  AppetizersListViewModel.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import Foundation
final class AppetizersListViewModel: ObservableObject {
    @Published  var appetizers: [Appetizer] = []

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
