//
//  AccountScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct AccountScreen: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""

    var body: some View {
        NavigationView {
            Form {
                Section("Personal Info") {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                }
            }
                .navigationTitle("🥷🏻 Account")
        }
    }
}

#Preview {
    AccountScreen()
}
