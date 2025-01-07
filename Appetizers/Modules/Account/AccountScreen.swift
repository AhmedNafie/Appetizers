//
//  AccountScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI

struct AccountScreen: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()

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
                    
                    DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                    //button and date picker have primaryGreen tint cuz they are part of the TabBar
                    Button {
                        print("Saved")
                    } label: {
                        Text("Save changes")
                    }
                }
            }
                .navigationTitle("🥷🏻 Account")
        }
    }
}

#Preview {
    AccountScreen()
}
