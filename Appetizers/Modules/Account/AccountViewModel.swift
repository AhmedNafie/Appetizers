//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 07/01/2025.
//

import Foundation

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
}
