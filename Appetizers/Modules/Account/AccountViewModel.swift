//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 07/01/2025.
//

import Foundation

final class AccountViewModel: ObservableObject {
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        print("Changes saved!")
   }
    
}
