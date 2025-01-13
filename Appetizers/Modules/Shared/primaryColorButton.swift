//
//  primaryColorButton.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 07/01/2025.
//

import SwiftUI

struct primaryColorButton: View {
    // to allow specifier use LocalizedStringKey not a string
    let title: LocalizedStringKey
    let action: () -> Void  // Add an action closure

    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 260, height: 50)
                .cornerRadius(10)
        }
        .buttonStyle(.bordered)
        .tint(Color.primaryGreen)
        .padding(.bottom, 30)
    }
}

#Preview {
    primaryColorButton(title: "Test") {
        print("Button tapped!")
    }
}
