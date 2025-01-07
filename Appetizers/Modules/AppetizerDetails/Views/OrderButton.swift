//
//  OrderButton.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 07/01/2025.
//

import SwiftUI

struct OrderButton: View {
    // to allow specifier use LocalizedStringKey not a string
    let title: LocalizedStringKey
    
    var body: some View {
        Button {
            print("Test")
        } label: {
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 260, height: 50)
                .foregroundStyle(.white)
                .background(.primaryGreen)
                .cornerRadius(10)
        }
        .padding(.bottom, 30)
    }
}

#Preview {
    OrderButton(title: "Test")
}
